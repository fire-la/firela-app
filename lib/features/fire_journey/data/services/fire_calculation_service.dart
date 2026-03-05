import 'dart:math';

import '../../../../core/utils/logger.dart';
import '../../domain/models/fire_progress.dart';

/// Service for calculating FIRE-related metrics
/// Implements standard FIRE formulas including the 4% rule
class FireCalculationService {
  FireCalculationService._();
  static final FireCalculationService instance = FireCalculationService._();

  /// Calculate FIRE number using the 4% rule
  /// FIRE Number = Annual Expenses / Withdrawal Rate
  /// Default withdrawal rate is 0.04 (4% rule)
  ///
  /// Example: $48,000 annual expenses / 0.04 = $1,200,000 FIRE number
  double calculateFireNumber(
    double monthlyExpenses, {
    double withdrawalRate = 0.04,
  }) {
    final annualExpenses = monthlyExpenses * 12;
    final fireNumber = annualExpenses / withdrawalRate;

    logger.i(
      '[FireCalculationService] calculateFireNumber: '
      'monthlyExpenses=$monthlyExpenses, withdrawalRate=$withdrawalRate, '
      'annualExpenses=$annualExpenses, fireNumber=$fireNumber',
    );

    return fireNumber;
  }

  /// Calculate progress percentage towards FIRE
  /// Returns a value between 0 and 100+
  double calculateProgress(double currentNetWorth, double fireNumber) {
    if (fireNumber <= 0) return 0.0;

    final progress = (currentNetWorth / fireNumber) * 100;

    logger.i(
      '[FireCalculationService] calculateProgress: '
      'currentNetWorth=$currentNetWorth, fireNumber=$fireNumber, '
      'progress=${progress.toStringAsFixed(2)}%',
    );

    return progress;
  }

  /// Calculate years to reach FIRE using compound interest formula
  /// Uses the formula: n = ln(FV/PV) / ln(1+r)
  /// Where:
  /// - FV = Future Value (FIRE number)
  /// - PV = Present Value (current net worth)
  /// - r = annual return rate
  /// - n = number of years
  ///
  /// Returns null if already at or past FIRE number
  double? calculateYearsToFire(
    double currentNetWorth,
    double fireNumber,
    double monthlySavings, {
    double annualReturn = 0.07,
  }) {
    // Already achieved FIRE
    if (currentNetWorth >= fireNumber) {
      logger.i(
        '[FireCalculationService] calculateYearsToFire: Already at FIRE! '
        'currentNetWorth=$currentNetWorth >= fireNumber=$fireNumber',
      );
      return null;
    }

    // No savings needed if already at FIRE
    if (monthlySavings <= 0 && currentNetWorth < fireNumber) {
      logger.w(
        '[FireCalculationService] calculateYearsToFire: No monthly savings, '
        'FIRE cannot be achieved without additional income',
      );
      return double.infinity;
    }

    // Calculate years using compound interest with monthly contributions
    // FV = PV * (1+r)^n + PMT * (((1+r)^n - 1) / r)
    // We need to solve for n numerically since it's not straightforward
    // Using iterative approach for simplicity
    final years = _calculateYearsIterative(
      currentNetWorth,
      fireNumber,
      monthlySavings,
      annualReturn,
    );

    logger.i(
      '[FireCalculationService] calculateYearsToFire: '
      'currentNetWorth=$currentNetWorth, fireNumber=$fireNumber, '
      'monthlySavings=$monthlySavings, annualReturn=$annualReturn, '
      'yearsToFire=$years',
    );

    return years;
  }

  /// Calculate years to FIRE using iterative approach
  /// More accurate for compound interest with monthly contributions
  double _calculateYearsIterative(
    double currentNetWorth,
    double fireNumber,
    double monthlySavings,
    double annualReturn,
  ) {
    const maxYears = 100;
    const monthsPerYear = 12;
    final monthlyReturn = annualReturn / monthsPerYear;

    var balance = currentNetWorth;

    for (var month = 1; month <= maxYears * monthsPerYear; month++) {
      // Apply monthly return
      balance *= (1 + monthlyReturn);
      // Add monthly savings
      balance += monthlySavings;

      if (balance >= fireNumber) {
        return month / monthsPerYear;
      }
    }

    return maxYears.toDouble();
  }

  /// Calculate savings rate as percentage of income
  /// Savings Rate = (Income - Expenses) / Income * 100
  double calculateSavingsRate(double monthlyIncome, double monthlyExpenses) {
    if (monthlyIncome <= 0) return 0.0;

    final savings = monthlyIncome - monthlyExpenses;
    final savingsRate = (savings / monthlyIncome) * 100;

    logger.i(
      '[FireCalculationService] calculateSavingsRate: '
      'monthlyIncome=$monthlyIncome, monthlyExpenses=$monthlyExpenses, '
      'savings=$savings, savingsRate=${savingsRate.toStringAsFixed(2)}%',
    );

    return savingsRate;
  }

  /// Calculate required monthly savings to reach FIRE in target years
  /// Uses reverse compound interest calculation
  ///
  /// Returns the monthly savings needed to reach FIRE number
  double calculateMonthlySavings(
    double currentNetWorth,
    double fireNumber,
    int targetYears, {
    double annualReturn = 0.07,
  }) {
    if (targetYears <= 0) {
      logger.w(
        '[FireCalculationService] calculateMonthlySavings: Invalid target years',
      );
      return fireNumber - currentNetWorth;
    }

    // If already at FIRE, no additional savings needed
    if (currentNetWorth >= fireNumber) {
      logger.i(
        '[FireCalculationService] calculateMonthlySavings: Already at FIRE, '
        'no additional savings needed',
      );
      return 0.0;
    }

    // Calculate using PMT formula for compound interest with initial principal
    // PMT = (FV - PV * (1+r)^n) / (((1+r)^n - 1) / r)
    const monthsPerYear = 12;
    final totalMonths = targetYears * monthsPerYear;
    final monthlyReturn = annualReturn / monthsPerYear;

    final futureValueOfPrincipal =
        currentNetWorth * pow(1 + monthlyReturn, totalMonths);
    final amountNeededFromSavings = fireNumber - futureValueOfPrincipal;

    double monthlySavings;
    if (monthlyReturn == 0) {
      monthlySavings = amountNeededFromSavings / totalMonths;
    } else {
      final annuityFactor = (pow(1 + monthlyReturn, totalMonths) - 1) /
          monthlyReturn;
      monthlySavings = amountNeededFromSavings / annuityFactor;
    }

    // Monthly savings cannot be negative
    monthlySavings = max(0, monthlySavings);

    logger.i(
      '[FireCalculationService] calculateMonthlySavings: '
      'currentNetWorth=$currentNetWorth, fireNumber=$fireNumber, '
      'targetYears=$targetYears, annualReturn=$annualReturn, '
      'monthlySavings=$monthlySavings',
    );

    return monthlySavings;
  }

  /// Calculate comprehensive FIRE progress
  /// Combines all calculations into a single FireProgress object
  FireProgress calculateFireProgress({
    required double currentNetWorth,
    required double monthlyExpenses,
    required double monthlyIncome,
    double withdrawalRate = 0.04,
    double annualReturn = 0.07,
  }) {
    final fireNumber = calculateFireNumber(
      monthlyExpenses,
      withdrawalRate: withdrawalRate,
    );
    final progressPercentage = calculateProgress(currentNetWorth, fireNumber);
    final savingsRate = calculateSavingsRate(monthlyIncome, monthlyExpenses);
    final monthlySavings = monthlyIncome - monthlyExpenses;

    final yearsToFire = calculateYearsToFire(
      currentNetWorth,
      fireNumber,
      monthlySavings,
      annualReturn: annualReturn,
    );

    return FireProgress(
      currentNetWorth: currentNetWorth,
      fireNumber: fireNumber,
      progressPercentage: progressPercentage,
      yearsToFire: yearsToFire,
      monthlySavings: monthlySavings,
      savingsRate: savingsRate,
    );
  }
}
