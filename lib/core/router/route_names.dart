/// Route name constants
class RouteNames {
  RouteNames._();

  /// Home route
  static const String home = '/';

  /// Accounts route
  static const String accounts = '/accounts';

  /// Account detail route
  static const String accountDetail = '/accounts/:id';

  /// Balance reconciliation route
  static const String reconciliation = '/reconciliation/:accountId';

  /// Transactions route
  static const String transactions = '/transactions';

  /// Transaction detail/edit route
  static const String transactionDetail = '/transactions/:id';

  /// Recurring transaction dialog route
  static const String recurringDialog = '/recurring/dialog';

  /// Recurring transaction setup route
  static const String recurringSetup = '/recurring/setup';

  /// Settings route
  static const String settings = '/settings';

  /// Login route
  static const String login = '/login';

  /// Register route
  static const String register = '/register';

  /// Bill import route
  static const String billImport = '/bill-import';

  /// Review Center route (list page)
  static const String reviewCenter = '/review-center';

  /// Review Center detail route
  static const String reviewCenterDetail = '/review-center/:id';

  /// Assets details route
  static const String assetsDetails = '/assets/details';

  /// Assets statistics route
  static const String assetsStatistics = '/assets/statistics';
}
