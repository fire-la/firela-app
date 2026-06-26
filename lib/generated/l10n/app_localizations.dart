import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'TW')
  ];

  /// The application title
  ///
  /// In en, this message translates to:
  /// **'FIREla'**
  String get appTitle;

  /// Welcome message on home screen
  ///
  /// In en, this message translates to:
  /// **'Welcome to FIREla'**
  String get welcomeMessage;

  /// App description on home screen
  ///
  /// In en, this message translates to:
  /// **'Your personal finance companion with data sovereignty'**
  String get appDescription;

  /// Tooltip for theme toggle button
  ///
  /// In en, this message translates to:
  /// **'Toggle Theme'**
  String get toggleTheme;

  /// Tooltip for language selector
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get changeLanguage;

  /// Label for current locale display
  ///
  /// In en, this message translates to:
  /// **'Current Locale'**
  String get currentLocale;

  /// Label for current theme display
  ///
  /// In en, this message translates to:
  /// **'Current Theme'**
  String get currentTheme;

  /// Title for data sovereignty feature
  ///
  /// In en, this message translates to:
  /// **'Data Sovereignty'**
  String get featureDataSovereignty;

  /// Description for data sovereignty feature
  ///
  /// In en, this message translates to:
  /// **'Your financial data belongs to you. Complete ownership and control.'**
  String get featureDataSovereigntyDesc;

  /// Title for real-time sync feature
  ///
  /// In en, this message translates to:
  /// **'Real-time Sync'**
  String get featureRealTimeSync;

  /// Description for real-time sync feature
  ///
  /// In en, this message translates to:
  /// **'Stay synchronized with your beancount backend seamlessly.'**
  String get featureRealTimeSyncDesc;

  /// Title for offline support feature
  ///
  /// In en, this message translates to:
  /// **'Offline Support'**
  String get featureOfflineSupport;

  /// Description for offline support feature
  ///
  /// In en, this message translates to:
  /// **'Works offline, syncs when connection is restored.'**
  String get featureOfflineSupportDesc;

  /// Title for accounts page
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get accountsTitle;

  /// Button text to create new account
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// Settings menu item
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Loading message
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// Error label
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// Retry button label
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// Cancel button text
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Save button text
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Tab label for FIRE journey page
  ///
  /// In en, this message translates to:
  /// **'FIRE Journey'**
  String get tabFireJourney;

  /// Tab label for assets page
  ///
  /// In en, this message translates to:
  /// **'Assets'**
  String get tabAssets;

  /// Tab label for settings page
  ///
  /// In en, this message translates to:
  /// **'Mine'**
  String get tabMine;

  /// Shows FIRE journey progress in days
  ///
  /// In en, this message translates to:
  /// **'You\'ve persisted for {days} days'**
  String fireJourneyDays(int days);

  /// Button to view FIRE plan
  ///
  /// In en, this message translates to:
  /// **'Watch Fire Plan'**
  String get watchFirePlan;

  /// Progress label
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get progress;

  /// Safety label
  ///
  /// In en, this message translates to:
  /// **'Safety'**
  String get safety;

  /// Net assets label
  ///
  /// In en, this message translates to:
  /// **'Net Assets (CNY)'**
  String get netAssets;

  /// Daily income label
  ///
  /// In en, this message translates to:
  /// **'Daily Income (CNY)'**
  String get dailyIncome;

  /// Net profit label
  ///
  /// In en, this message translates to:
  /// **'Net Profit'**
  String get netProfit;

  /// Emergency fund in months
  ///
  /// In en, this message translates to:
  /// **'{months} Months Fund'**
  String freeMonths(int months);

  /// Assets and liabilities tab
  ///
  /// In en, this message translates to:
  /// **'Assets & Liabilities'**
  String get assetsLiabilities;

  /// Income and expense tab
  ///
  /// In en, this message translates to:
  /// **'Income & Expense'**
  String get incomeExpense;

  /// Total assets label
  ///
  /// In en, this message translates to:
  /// **'Total Assets'**
  String get totalAssets;

  /// Total liabilities label
  ///
  /// In en, this message translates to:
  /// **'Total Liabilities'**
  String get totalLiabilities;

  /// Assets label
  ///
  /// In en, this message translates to:
  /// **'Assets'**
  String get assets;

  /// Liabilities label
  ///
  /// In en, this message translates to:
  /// **'Liabilities'**
  String get liabilities;

  /// Details button
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// Asset distribution chart title
  ///
  /// In en, this message translates to:
  /// **'Asset Distribution'**
  String get assetDistribution;

  /// Asset change trend chart title
  ///
  /// In en, this message translates to:
  /// **'Asset Change Trend'**
  String get assetChange;

  /// Monthly return label
  ///
  /// In en, this message translates to:
  /// **'Monthly Return (CNY)'**
  String get monthlyReturn;

  /// View all trailing button
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// Monthly increase amount
  ///
  /// In en, this message translates to:
  /// **'{month} +{amount}'**
  String monthlyIncrease(String month, String amount);

  /// Monthly expense label
  ///
  /// In en, this message translates to:
  /// **'Monthly Expense (CNY)'**
  String get monthlyExpense;

  /// Income type
  ///
  /// In en, this message translates to:
  /// **'Income'**
  String get income;

  /// Budget management button
  ///
  /// In en, this message translates to:
  /// **'Budget Management'**
  String get budgetManagement;

  /// Expense trend chart title
  ///
  /// In en, this message translates to:
  /// **'Expense Trend'**
  String get expenseTrend;

  /// Budget usage percentage
  ///
  /// In en, this message translates to:
  /// **'Used {percent}%'**
  String used(int percent);

  /// Remaining budget amount
  ///
  /// In en, this message translates to:
  /// **'Remaining ¥{amount}'**
  String remaining(String amount);

  /// Expense details section title
  ///
  /// In en, this message translates to:
  /// **'Expense Details'**
  String get expenseDetails;

  /// Expense categories donut chart title
  ///
  /// In en, this message translates to:
  /// **'Expense Categories'**
  String get expenseCategories;

  /// Empty state when there are no transactions
  ///
  /// In en, this message translates to:
  /// **'No transactions'**
  String get noTransactionRecords;

  /// Load failure message
  ///
  /// In en, this message translates to:
  /// **'Load failed'**
  String get loadFailed;

  /// Chart period label for last 6 months
  ///
  /// In en, this message translates to:
  /// **'Last 6 months'**
  String get recent6Months;

  /// Chart period label for last month
  ///
  /// In en, this message translates to:
  /// **'Last month'**
  String get recent1Month;

  /// Chart period label for last 3 months
  ///
  /// In en, this message translates to:
  /// **'Last 3 months'**
  String get recent3Months;

  /// Chart period label for last year
  ///
  /// In en, this message translates to:
  /// **'Last year'**
  String get recent1Year;

  /// A category's share of total spending
  ///
  /// In en, this message translates to:
  /// **'{percent}% of spending'**
  String expenseShare(int percent);

  /// Total label
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// Food category
  ///
  /// In en, this message translates to:
  /// **'Food'**
  String get food;

  /// Transportation category
  ///
  /// In en, this message translates to:
  /// **'Transportation'**
  String get transportation;

  /// Entertainment category
  ///
  /// In en, this message translates to:
  /// **'Entertainment'**
  String get entertainment;

  /// Become member button
  ///
  /// In en, this message translates to:
  /// **'Become IGN Member'**
  String get becomeMember;

  /// Member benefit description
  ///
  /// In en, this message translates to:
  /// **'Unlock exclusive AI financial services and join Fire Journey'**
  String get memberBenefit;

  /// Activate membership button
  ///
  /// In en, this message translates to:
  /// **'Activate Now'**
  String get activateNow;

  /// Data export menu item
  ///
  /// In en, this message translates to:
  /// **'Data Export'**
  String get dataExport;

  /// Privacy statement menu item
  ///
  /// In en, this message translates to:
  /// **'Privacy Statement'**
  String get privacyStatement;

  /// About us menu item
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get aboutUs;

  /// Help center menu item
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter;

  /// Suggestions menu item
  ///
  /// In en, this message translates to:
  /// **'Suggestions'**
  String get suggestions;

  /// Logout button
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// Login now button when not logged in
  ///
  /// In en, this message translates to:
  /// **'Login Now'**
  String get loginNow;

  /// Statistics label
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get statistics;

  /// Balanced allocation type
  ///
  /// In en, this message translates to:
  /// **'Balanced'**
  String get balanced;

  /// Aggressive allocation type
  ///
  /// In en, this message translates to:
  /// **'Aggressive'**
  String get aggressive;

  /// Conservative allocation type
  ///
  /// In en, this message translates to:
  /// **'Conservative'**
  String get conservative;

  /// AI accounting mode
  ///
  /// In en, this message translates to:
  /// **'AI Accounting'**
  String get aiAccounting;

  /// Manual accounting mode
  ///
  /// In en, this message translates to:
  /// **'Manual Accounting'**
  String get manualAccounting;

  /// Placeholder text for expense input
  ///
  /// In en, this message translates to:
  /// **'Enter expense description, e.g. \"Dinner 20 yuan\"'**
  String get enterExpenseDescription;

  /// Photo recognition button
  ///
  /// In en, this message translates to:
  /// **'Photo Recognition'**
  String get photoRecognition;

  /// Bill import button
  ///
  /// In en, this message translates to:
  /// **'Bill Import'**
  String get billImport;

  /// Analysis in progress text
  ///
  /// In en, this message translates to:
  /// **'Analyzing...'**
  String get analyzing;

  /// AI parse success title
  ///
  /// In en, this message translates to:
  /// **'AI Parse Success'**
  String get aiParseSuccess;

  /// Expense type
  ///
  /// In en, this message translates to:
  /// **'Expense'**
  String get expense;

  /// Date label
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// Expense type label
  ///
  /// In en, this message translates to:
  /// **'Expense Type'**
  String get expenseType;

  /// Expense amount label
  ///
  /// In en, this message translates to:
  /// **'Expense Amount'**
  String get expenseAmount;

  /// Notes label
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notes;

  /// Confirm button
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// Please select placeholder
  ///
  /// In en, this message translates to:
  /// **'Please Select'**
  String get pleaseSelect;

  /// Enter amount placeholder
  ///
  /// In en, this message translates to:
  /// **'Enter Amount'**
  String get enterAmount;

  /// Expense type not recognized message
  ///
  /// In en, this message translates to:
  /// **'Expense type not recognized, please select manually'**
  String get expenseTypeNotRecognized;

  /// Expense amount not recognized message
  ///
  /// In en, this message translates to:
  /// **'Expense amount not recognized, please enter manually'**
  String get expenseAmountNotRecognized;

  /// Missing required fields message
  ///
  /// In en, this message translates to:
  /// **'Missing Required Fields'**
  String get missingRequiredFields;

  /// Bill import page title
  ///
  /// In en, this message translates to:
  /// **'Bill Import'**
  String get billImportTitle;

  /// Import bill step
  ///
  /// In en, this message translates to:
  /// **'Import Bill'**
  String get importBill;

  /// Parse bill step
  ///
  /// In en, this message translates to:
  /// **'Parse Bill'**
  String get parseBill;

  /// Please import bill file prompt
  ///
  /// In en, this message translates to:
  /// **'Please import bill file'**
  String get pleaseImportAlipayBill;

  /// Add file button
  ///
  /// In en, this message translates to:
  /// **'Add File'**
  String get addFile;

  /// Supported file formats
  ///
  /// In en, this message translates to:
  /// **'Supports Excel or CSV format, max 2MB'**
  String get supportedFormats;

  /// How to get bill title
  ///
  /// In en, this message translates to:
  /// **'How to get bill?'**
  String get howToGetBill;

  /// Parsing bill message
  ///
  /// In en, this message translates to:
  /// **'Parsing bill, please wait...'**
  String get parsingBill;

  /// Re-upload button
  ///
  /// In en, this message translates to:
  /// **'Re-upload'**
  String get reupload;

  /// Accounting complete message
  ///
  /// In en, this message translates to:
  /// **'{count} accounting entries completed'**
  String accountingComplete(int count);

  /// Review Center page title
  ///
  /// In en, this message translates to:
  /// **'Review Center'**
  String get reviewCenterTitle;

  /// All transactions tab
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get reviewCenterAll;

  /// High confidence tab
  ///
  /// In en, this message translates to:
  /// **'High Confidence'**
  String get reviewCenterHigh;

  /// Medium confidence tab
  ///
  /// In en, this message translates to:
  /// **'Needs Confirmation'**
  String get reviewCenterMedium;

  /// Low confidence tab
  ///
  /// In en, this message translates to:
  /// **'Suggested Review'**
  String get reviewCenterLow;

  /// Empty state message
  ///
  /// In en, this message translates to:
  /// **'No pending transactions'**
  String get reviewCenterEmpty;

  /// Keep transaction button
  ///
  /// In en, this message translates to:
  /// **'Keep'**
  String get reviewCenterKeep;

  /// Delete transaction button
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get reviewCenterDelete;

  /// Transaction confirmed toast
  ///
  /// In en, this message translates to:
  /// **'Transaction confirmed'**
  String get reviewCenterConfirmSuccess;

  /// Loading message
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get reviewCenterLoading;

  /// Error message
  ///
  /// In en, this message translates to:
  /// **'Failed to load, please retry'**
  String get reviewCenterError;

  /// Detail page title
  ///
  /// In en, this message translates to:
  /// **'Transaction Detail'**
  String get reviewCenterDetailTitle;

  /// AI chat tab placeholder text
  ///
  /// In en, this message translates to:
  /// **'AI Chat (Coming Soon)'**
  String get aiChatComingSoon;

  /// Account field label
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get reviewCenterAccount;

  /// Merchant field label
  ///
  /// In en, this message translates to:
  /// **'Merchant'**
  String get reviewCenterMerchant;

  /// Amount field label
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get reviewCenterAmount;

  /// Review detail transaction info section title
  ///
  /// In en, this message translates to:
  /// **'Transaction Info'**
  String get reviewCenterTxInfo;

  /// Review detail match reasons section title
  ///
  /// In en, this message translates to:
  /// **'Why does this need review?'**
  String get reviewCenterReasonHeader;

  /// Review detail decision section title
  ///
  /// In en, this message translates to:
  /// **'How to handle?'**
  String get reviewCenterDecisionHeader;

  /// Review resolved success toast
  ///
  /// In en, this message translates to:
  /// **'Resolved'**
  String get reviewCenterResolved;

  /// Review resolve failure toast
  ///
  /// In en, this message translates to:
  /// **'Failed to resolve, please retry'**
  String get reviewCenterResolveFailed;

  /// Confidence percentage in detail header
  ///
  /// In en, this message translates to:
  /// **'· {percent}%'**
  String reviewCenterConfidenceScore(int percent);

  /// Review type: duplicate
  ///
  /// In en, this message translates to:
  /// **'Duplicate'**
  String get reviewTypeDuplicate;

  /// Review type: rule match
  ///
  /// In en, this message translates to:
  /// **'Rule Match'**
  String get reviewTypeRuleMatch;

  /// Review type: payee match
  ///
  /// In en, this message translates to:
  /// **'Payee Match'**
  String get reviewTypePayeeMatch;

  /// Review type: account validation
  ///
  /// In en, this message translates to:
  /// **'Account Validation'**
  String get reviewTypeAccountValidation;

  /// Review type: pipeline error
  ///
  /// In en, this message translates to:
  /// **'Pipeline Error'**
  String get reviewTypePipelineError;

  /// Decision action: upgrade and replace
  ///
  /// In en, this message translates to:
  /// **'Upgrade & Replace'**
  String get reviewActionUpgradeReplace;

  /// Decision action: link and keep both
  ///
  /// In en, this message translates to:
  /// **'Link & Keep Both'**
  String get reviewActionLinkKeepBoth;

  /// Decision action: skip the new import
  ///
  /// In en, this message translates to:
  /// **'Skip New'**
  String get reviewActionIgnoreNew;

  /// Decision action: confirm they are different
  ///
  /// In en, this message translates to:
  /// **'Not a Duplicate'**
  String get reviewActionConfirmDifferent;

  /// Decision action: accept
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get reviewActionAccept;

  /// Decision action: reject
  ///
  /// In en, this message translates to:
  /// **'Reject'**
  String get reviewActionReject;

  /// Decision action: accept and learn a rule
  ///
  /// In en, this message translates to:
  /// **'Accept & Learn'**
  String get reviewActionAcceptAndLearn;

  /// Decision action: choose another account
  ///
  /// In en, this message translates to:
  /// **'Choose Other Account'**
  String get reviewActionChooseOther;

  /// Decision action: cancel
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get reviewActionCancel;

  /// Decision action: fix
  ///
  /// In en, this message translates to:
  /// **'Fix'**
  String get reviewActionFix;

  /// Decision action: ignore
  ///
  /// In en, this message translates to:
  /// **'Ignore'**
  String get reviewActionIgnore;

  /// ACCOUNT_VALIDATION card title
  ///
  /// In en, this message translates to:
  /// **'Account Issue'**
  String get reviewCenterAccountIssue;

  /// ACCOUNT_VALIDATION candidate list label
  ///
  /// In en, this message translates to:
  /// **'Other similar accounts'**
  String get reviewCenterOtherSimilarAccounts;

  /// Tag on the suggested account candidate
  ///
  /// In en, this message translates to:
  /// **'Recommended'**
  String get reviewCenterRecommended;

  /// Tag on a fallback account candidate
  ///
  /// In en, this message translates to:
  /// **'Fallback account'**
  String get reviewCenterFallbackAccount;

  /// Similarity percentage for review compare/score
  ///
  /// In en, this message translates to:
  /// **'{pct}% match'**
  String reviewCenterSimilarity(int pct);

  /// DUPLICATE compare card: new import label
  ///
  /// In en, this message translates to:
  /// **'New Import'**
  String get reviewCenterNewImport;

  /// DUPLICATE compare card: existing record label
  ///
  /// In en, this message translates to:
  /// **'Existing Record'**
  String get reviewCenterExistingRecord;

  /// Shown when ACCOUNT_VALIDATION has no similar accounts
  ///
  /// In en, this message translates to:
  /// **'No candidate accounts'**
  String get reviewCenterNoCandidates;

  /// RULE_MATCH card: header title
  ///
  /// In en, this message translates to:
  /// **'Matched Rule'**
  String get reviewCenterRuleMatchTitle;

  /// RULE_MATCH card: target account row label
  ///
  /// In en, this message translates to:
  /// **'Classify to'**
  String get reviewCenterRuleTargetLabel;

  /// RULE_MATCH card: match score row
  ///
  /// In en, this message translates to:
  /// **'Rule match {pct}%'**
  String reviewCenterRuleConfidence(int pct);

  /// RULE_MATCH card: shown when destination is unset
  ///
  /// In en, this message translates to:
  /// **'No target account'**
  String get reviewCenterRuleNoTarget;

  /// Expense label
  ///
  /// In en, this message translates to:
  /// **'Expense'**
  String get reviewCenterExpense;

  /// Income label
  ///
  /// In en, this message translates to:
  /// **'Income'**
  String get reviewCenterIncome;

  /// Invalid ID error
  ///
  /// In en, this message translates to:
  /// **'Invalid transaction ID'**
  String get reviewCenterInvalidId;

  /// Load failed error
  ///
  /// In en, this message translates to:
  /// **'Failed to load, please retry'**
  String get reviewCenterLoadFailed;

  /// Type filter chip: all types
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get reviewChipAll;

  /// Type filter chip: duplicate
  ///
  /// In en, this message translates to:
  /// **'Duplicate'**
  String get reviewChipDuplicate;

  /// Type filter chip: rule match
  ///
  /// In en, this message translates to:
  /// **'Rule'**
  String get reviewChipRule;

  /// Type filter chip: payee match
  ///
  /// In en, this message translates to:
  /// **'Payee'**
  String get reviewChipPayee;

  /// Type filter chip: account validation
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get reviewChipAccount;

  /// Type filter chip: pipeline error
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get reviewChipPipeline;

  /// ConfidenceBadge label: high (>=85%)
  ///
  /// In en, this message translates to:
  /// **'Very Confident'**
  String get reviewConfidenceHigh;

  /// ConfidenceBadge label: medium (60-84%)
  ///
  /// In en, this message translates to:
  /// **'Likely'**
  String get reviewConfidenceMedium;

  /// ConfidenceBadge label: low (<60%)
  ///
  /// In en, this message translates to:
  /// **'Uncertain'**
  String get reviewConfidenceLow;

  /// ConfidenceBadge label: pipeline error
  ///
  /// In en, this message translates to:
  /// **'Needs Fix'**
  String get reviewConfidencePendingFix;

  /// Section header: total pending count
  ///
  /// In en, this message translates to:
  /// **'{count} pending'**
  String reviewPendingCount(int count);

  /// Row source tag: type label and import source
  ///
  /// In en, this message translates to:
  /// **'{type} · {source}'**
  String reviewSourceTag(String type, String source);

  /// DUPLICATE row summary
  ///
  /// In en, this message translates to:
  /// **'{amount} may duplicate an existing entry'**
  String reviewSummaryDuplicate(String amount);

  /// RULE_MATCH row summary
  ///
  /// In en, this message translates to:
  /// **'Rule {ruleName} to apply'**
  String reviewSummaryRuleMatch(String ruleName);

  /// PAYEE_MATCH row summary
  ///
  /// In en, this message translates to:
  /// **'Payee \"{suggested}\" to identify'**
  String reviewSummaryPayeeMatch(String suggested);

  /// ACCOUNT_VALIDATION row summary
  ///
  /// In en, this message translates to:
  /// **'Account \"{account}\" looks like a typo'**
  String reviewSummaryAccountValidation(String account);

  /// PIPELINE_ERROR row summary
  ///
  /// In en, this message translates to:
  /// **'{error}'**
  String reviewSummaryPipelineError(String error);

  /// PIPELINE_ERROR type badge: booking error
  ///
  /// In en, this message translates to:
  /// **'Booking Error'**
  String get reviewCenterErrorTypeBooking;

  /// PIPELINE_ERROR type badge: balance error
  ///
  /// In en, this message translates to:
  /// **'Balance Error'**
  String get reviewCenterErrorTypeBalance;

  /// PIPELINE_ERROR type badge: validation error
  ///
  /// In en, this message translates to:
  /// **'Validation Error'**
  String get reviewCenterErrorTypeValidation;

  /// Batch bar count label
  ///
  /// In en, this message translates to:
  /// **'{type} · {count, plural, one{{count} item} other{{count} items}}'**
  String reviewBatchCount(String type, int count);

  /// Batch bar apply button
  ///
  /// In en, this message translates to:
  /// **'Apply {count} · {action}'**
  String reviewBatchApply(int count, String action);

  /// Batch action sheet title
  ///
  /// In en, this message translates to:
  /// **'Batch resolve'**
  String get reviewBatchTitle;

  /// Batch/inline action: skip
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get reviewActionSkip;

  /// Batch/inline action: replace
  ///
  /// In en, this message translates to:
  /// **'Replace'**
  String get reviewActionReplace;

  /// Skip action hint
  ///
  /// In en, this message translates to:
  /// **'Skip the new import, keep the existing entry'**
  String get reviewActionSkipHint;

  /// Replace action hint
  ///
  /// In en, this message translates to:
  /// **'Replace the existing entry with the new one (no batch undo)'**
  String get reviewActionReplaceHint;

  /// Inline action label for RULE_MATCH
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get reviewInlineApply;

  /// Inline action label for PAYEE_MATCH
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get reviewInlineSelect;

  /// Resolved/undo bar hint
  ///
  /// In en, this message translates to:
  /// **'{count} resolved · undo one-by-one within 24h'**
  String reviewResolvedUndoHint(int count);

  /// Undo button
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get reviewUndo;

  /// Undo failure toast
  ///
  /// In en, this message translates to:
  /// **'Undo failed, please retry'**
  String get reviewUndoFailed;

  /// Batch success toast
  ///
  /// In en, this message translates to:
  /// **'{success, plural, one{{success} item resolved} other{{success} items resolved}}'**
  String reviewBatchApplied(int success);

  /// Batch partial-failure toast
  ///
  /// In en, this message translates to:
  /// **'{success} resolved, {failed} failed'**
  String reviewBatchPartial(int success, int failed);

  /// Region label
  ///
  /// In en, this message translates to:
  /// **'Region'**
  String get region;

  /// Select region dialog title
  ///
  /// In en, this message translates to:
  /// **'Select Region'**
  String get selectRegion;

  /// Switch region dialog title
  ///
  /// In en, this message translates to:
  /// **'Switch Region'**
  String get switchRegion;

  /// Switch region confirmation message
  ///
  /// In en, this message translates to:
  /// **'Data will be reloaded after switching region. Continue?'**
  String get switchRegionConfirm;

  /// Region switched success message
  ///
  /// In en, this message translates to:
  /// **'Switched to {name} region'**
  String regionSwitched(String name);

  /// Scan receipt button text
  ///
  /// In en, this message translates to:
  /// **'Scan Receipt'**
  String get scanReceipt;

  /// Take photo option
  ///
  /// In en, this message translates to:
  /// **'Take Photo'**
  String get takePhoto;

  /// Choose from gallery option
  ///
  /// In en, this message translates to:
  /// **'Choose from Gallery'**
  String get chooseFromGallery;

  /// Scan receipt page title
  ///
  /// In en, this message translates to:
  /// **'Scan Receipt Recognition'**
  String get scanReceiptTitle;

  /// No description provided for @processingOcr.
  ///
  /// In en, this message translates to:
  /// **'Processing receipt...'**
  String get processingOcr;

  /// OCR result sheet title
  ///
  /// In en, this message translates to:
  /// **'OCR Result'**
  String get ocrResultTitle;

  /// OCR result sheet title when confidence is low
  ///
  /// In en, this message translates to:
  /// **'OCR Result (Low Confidence)'**
  String get ocrResultTitleLowConfidence;

  /// Section title for parsed OCR fields
  ///
  /// In en, this message translates to:
  /// **'Parsed Result'**
  String get ocrParsedResult;

  /// OCR confidence label
  ///
  /// In en, this message translates to:
  /// **'Confidence'**
  String get ocrConfidence;

  /// Label for number of line items
  ///
  /// In en, this message translates to:
  /// **'Line Items'**
  String get ocrLineItemCount;

  /// Date label in OCR result
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get ocrDate;

  /// Merchant label in OCR result
  ///
  /// In en, this message translates to:
  /// **'Merchant'**
  String get ocrMerchant;

  /// Hint text for merchant input field
  ///
  /// In en, this message translates to:
  /// **'Enter merchant name'**
  String get ocrMerchantHint;

  /// Amount label in OCR result
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get ocrAmount;

  /// Fallback text when amount is not recognized
  ///
  /// In en, this message translates to:
  /// **'(Unrecognized)'**
  String get ocrUnrecognized;

  /// Entry mode section title
  ///
  /// In en, this message translates to:
  /// **'Entry Mode'**
  String get ocrEntryMode;

  /// Single transaction mode for entire receipt
  ///
  /// In en, this message translates to:
  /// **'Whole Receipt'**
  String get ocrEntryModeWhole;

  /// Multiple transactions mode, one per line item
  ///
  /// In en, this message translates to:
  /// **'Itemized'**
  String get ocrEntryModeItemized;

  /// Line items section title
  ///
  /// In en, this message translates to:
  /// **'Line Items'**
  String get ocrLineItems;

  /// Empty state when no line items detected
  ///
  /// In en, this message translates to:
  /// **'No line items'**
  String get ocrNoLineItems;

  /// Button to add a new line item
  ///
  /// In en, this message translates to:
  /// **'Add Item'**
  String get ocrAddItem;

  /// Hint text for product name input
  ///
  /// In en, this message translates to:
  /// **'Product Name'**
  String get ocrProductName;

  /// Error when product name is empty
  ///
  /// In en, this message translates to:
  /// **'Product name is empty, please fill in'**
  String get ocrErrorNameEmpty;

  /// Error when price is zero or missing
  ///
  /// In en, this message translates to:
  /// **'Price is missing, please fill in'**
  String get ocrErrorPriceMissing;

  /// Warning when product name looks suspicious
  ///
  /// In en, this message translates to:
  /// **'Product name may be incorrect, please verify'**
  String get ocrErrorNameSuspect;

  /// Label for line items total amount
  ///
  /// In en, this message translates to:
  /// **'Line Items Total'**
  String get ocrLineItemsTotal;

  /// Categorization preview dialog title
  ///
  /// In en, this message translates to:
  /// **'Categorization Preview'**
  String get categorizationPreviewTitle;

  /// Number of items
  ///
  /// In en, this message translates to:
  /// **'items'**
  String get items;

  /// Items that need review label
  ///
  /// In en, this message translates to:
  /// **'need review'**
  String get needsReview;

  /// Confirm import button
  ///
  /// In en, this message translates to:
  /// **'Confirm Import'**
  String get confirmImport;

  /// Edit categories button
  ///
  /// In en, this message translates to:
  /// **'Edit Categories'**
  String get editCategories;

  /// Average confidence label
  ///
  /// In en, this message translates to:
  /// **'Average Confidence'**
  String get avgConfidence;

  /// All items have high confidence
  ///
  /// In en, this message translates to:
  /// **'All High Confidence'**
  String get allHighConfidence;

  /// Some items need review
  ///
  /// In en, this message translates to:
  /// **'Some Need Review'**
  String get someNeedReview;

  /// Import idle state label
  ///
  /// In en, this message translates to:
  /// **'Ready to Import'**
  String get importProgressIdle;

  /// Upload step label
  ///
  /// In en, this message translates to:
  /// **'Uploading'**
  String get importProgressUploading;

  /// Parsing step label
  ///
  /// In en, this message translates to:
  /// **'Parsing'**
  String get importProgressParsing;

  /// Categorizing step label
  ///
  /// In en, this message translates to:
  /// **'Categorizing'**
  String get importProgressCategorizing;

  /// Reviewing step label
  ///
  /// In en, this message translates to:
  /// **'Reviewing'**
  String get importProgressReviewing;

  /// Complete step label
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get importProgressComplete;

  /// Error state label
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get importProgressError;

  /// Error retry suggestion
  ///
  /// In en, this message translates to:
  /// **'Please try again'**
  String get importErrorRetry;

  /// File too large error message
  ///
  /// In en, this message translates to:
  /// **'File is too large. Please select a file smaller than {size}.'**
  String importErrorFileTooLarge(String size);

  /// Unsupported format error message
  ///
  /// In en, this message translates to:
  /// **'Unsupported file format. Please use CSV or Excel files.'**
  String get importErrorUnsupportedFormat;

  /// Network error message
  ///
  /// In en, this message translates to:
  /// **'Network error. Please check your connection and try again.'**
  String get importErrorNetwork;

  /// Parsing failed error message
  ///
  /// In en, this message translates to:
  /// **'Failed to parse bill. Please check the file format.'**
  String get importErrorParsingFailed;

  /// Duplicate detection message
  ///
  /// In en, this message translates to:
  /// **'Duplicate transactions detected and skipped.'**
  String get importErrorDuplicateDetected;

  /// Generic error message
  ///
  /// In en, this message translates to:
  /// **'An error occurred. Please try again.'**
  String get importErrorGeneric;

  /// View error details button
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get importErrorViewDetails;

  /// Retry button text
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get importErrorRetryButton;

  /// Batch import summary title
  ///
  /// In en, this message translates to:
  /// **'Import Summary'**
  String get batchImportSummaryTitle;

  /// Successfully imported label
  ///
  /// In en, this message translates to:
  /// **'Successfully Imported'**
  String get batchImportSuccessfullyImported;

  /// Duplicates skipped label
  ///
  /// In en, this message translates to:
  /// **'Duplicates Skipped'**
  String get batchImportDuplicatesSkipped;

  /// Requires review label
  ///
  /// In en, this message translates to:
  /// **'Requires Review'**
  String get batchImportRequiresReview;

  /// View imported button
  ///
  /// In en, this message translates to:
  /// **'View Imported'**
  String get batchImportViewImported;

  /// Review low confidence button
  ///
  /// In en, this message translates to:
  /// **'Review Low Confidence'**
  String get batchImportReviewLowConfidence;

  /// Continue import button
  ///
  /// In en, this message translates to:
  /// **'Continue Import'**
  String get batchImportContinueImport;

  /// Done button
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get batchImportDone;

  /// Items imported message
  ///
  /// In en, this message translates to:
  /// **'{count} items imported successfully'**
  String batchImportItemsImported(int count);

  /// Liabilities breakdown by type section title
  ///
  /// In en, this message translates to:
  /// **'Liabilities by Type'**
  String get liabilitiesByType;

  /// Credit cards liability type
  ///
  /// In en, this message translates to:
  /// **'Credit Cards'**
  String get creditCards;

  /// Loans liability type
  ///
  /// In en, this message translates to:
  /// **'Loans'**
  String get loans;

  /// Mortgages liability type
  ///
  /// In en, this message translates to:
  /// **'Mortgages'**
  String get mortgages;

  /// Other liabilities type
  ///
  /// In en, this message translates to:
  /// **'Other Liabilities'**
  String get otherLiabilities;

  /// Liability details section
  ///
  /// In en, this message translates to:
  /// **'Liability Details'**
  String get liabilityDetails;

  /// 1 month period selector label
  ///
  /// In en, this message translates to:
  /// **'1M'**
  String get period1Month;

  /// 3 months period selector label
  ///
  /// In en, this message translates to:
  /// **'3M'**
  String get period3Months;

  /// 6 months period selector label
  ///
  /// In en, this message translates to:
  /// **'6M'**
  String get period6Months;

  /// 1 year period selector label
  ///
  /// In en, this message translates to:
  /// **'1Y'**
  String get period1Year;

  /// FIRE goal label
  ///
  /// In en, this message translates to:
  /// **'FIRE Goal'**
  String get fireGoal;

  /// FIRE number (target amount for financial independence)
  ///
  /// In en, this message translates to:
  /// **'FIRE Number'**
  String get fireNumber;

  /// Savings rate percentage
  ///
  /// In en, this message translates to:
  /// **'Savings Rate'**
  String get savingsRate;

  /// Estimated years to reach FIRE
  ///
  /// In en, this message translates to:
  /// **'Years to FIRE'**
  String get yearsToFire;

  /// Title for milestone achievement celebration
  ///
  /// In en, this message translates to:
  /// **'Milestone Achieved!'**
  String get milestoneAchieved;

  /// Message for milestone celebration
  ///
  /// In en, this message translates to:
  /// **'Congratulations on reaching this milestone on your FIRE journey!'**
  String get celebrateProgress;

  /// Hint for pull-to-refresh
  ///
  /// In en, this message translates to:
  /// **'Pull to refresh and see your latest progress'**
  String get refreshToSeeUpdates;

  /// Title for FIRE projection chart
  ///
  /// In en, this message translates to:
  /// **'FIRE Projection'**
  String get fireProjectionTitle;

  /// Years to FIRE value display
  ///
  /// In en, this message translates to:
  /// **'{years} years to FIRE'**
  String yearsToFireValue(String years);

  /// Projection year value
  ///
  /// In en, this message translates to:
  /// **'Year {years}'**
  String projectionYearValue(String years);

  /// Baseline scenario name
  ///
  /// In en, this message translates to:
  /// **'Baseline'**
  String get baselineScenario;

  /// Aggressive scenario name
  ///
  /// In en, this message translates to:
  /// **'Aggressive'**
  String get aggressiveScenario;

  /// Title for scenario modeling section
  ///
  /// In en, this message translates to:
  /// **'Scenario Modeling'**
  String get scenarioModeling;

  /// Reset button
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// Monthly savings label
  ///
  /// In en, this message translates to:
  /// **'Monthly Savings'**
  String get monthlySavings;

  /// Adjusted savings value display
  ///
  /// In en, this message translates to:
  /// **'Adjusted: {amount}'**
  String adjustedSavingsValue(String amount);

  /// Expected return rate label
  ///
  /// In en, this message translates to:
  /// **'Expected Return'**
  String get expectedReturn;

  /// Description for return rate
  ///
  /// In en, this message translates to:
  /// **'Annual investment return rate'**
  String get returnRateDescription;

  /// Retirement spending level
  ///
  /// In en, this message translates to:
  /// **'Retirement Spending'**
  String get retirementSpending;

  /// Description for retirement spending
  ///
  /// In en, this message translates to:
  /// **'As percentage of current expenses'**
  String get retirementSpendingDescription;

  /// Positive scenario impact message
  ///
  /// In en, this message translates to:
  /// **'Adjusting these settings shows how you can accelerate your FIRE timeline.'**
  String get scenarioImpactPositive;

  /// Neutral scenario impact message
  ///
  /// In en, this message translates to:
  /// **'Modify the sliders above to see how changes affect your FIRE timeline.'**
  String get scenarioImpactNeutral;

  /// Title for FIRE types section
  ///
  /// In en, this message translates to:
  /// **'FIRE Types'**
  String get fireTypes;

  /// Full FIRE type name
  ///
  /// In en, this message translates to:
  /// **'Full FIRE'**
  String get fullFire;

  /// Full FIRE description
  ///
  /// In en, this message translates to:
  /// **'Traditional FIRE with full financial independence'**
  String get fullFireDescription;

  /// Coast FIRE type name
  ///
  /// In en, this message translates to:
  /// **'Coast FIRE'**
  String get coastFire;

  /// Coast FIRE description
  ///
  /// In en, this message translates to:
  /// **'Save enough early, let it grow without adding more'**
  String get coastFireDescription;

  /// Barista FIRE type name
  ///
  /// In en, this message translates to:
  /// **'Barista FIRE'**
  String get baristaFire;

  /// Barista FIRE description
  ///
  /// In en, this message translates to:
  /// **'Work part-time, cover some expenses with savings'**
  String get baristaFireDescription;

  /// Lean FIRE type name
  ///
  /// In en, this message translates to:
  /// **'Lean FIRE'**
  String get leanFire;

  /// Lean FIRE description
  ///
  /// In en, this message translates to:
  /// **'Minimalist lifestyle with lower expenses'**
  String get leanFireDescription;

  /// Target amount label
  ///
  /// In en, this message translates to:
  /// **'Target'**
  String get targetAmount;

  /// Current progress label
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get currentProgress;

  /// Monthly savings needed label
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthlyNeeded;

  /// Time to reach label
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get timeToReach;

  /// Years value display
  ///
  /// In en, this message translates to:
  /// **'{years} years'**
  String yearsValue(String years);

  /// Already achieved label
  ///
  /// In en, this message translates to:
  /// **'Achieved!'**
  String get alreadyAchieved;

  /// Export data title
  ///
  /// In en, this message translates to:
  /// **'Export Data'**
  String get exportData;

  /// Export as JSON option
  ///
  /// In en, this message translates to:
  /// **'Export as JSON'**
  String get exportAsJson;

  /// Export as CSV option
  ///
  /// In en, this message translates to:
  /// **'Export as CSV'**
  String get exportAsCsv;

  /// Exporting in progress
  ///
  /// In en, this message translates to:
  /// **'Exporting...'**
  String get exporting;

  /// Export success message
  ///
  /// In en, this message translates to:
  /// **'Export successful'**
  String get exportSuccess;

  /// Export failed message
  ///
  /// In en, this message translates to:
  /// **'Export failed'**
  String get exportFailed;

  /// Privacy policy title
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// Terms of service title
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfService;

  /// Licenses title
  ///
  /// In en, this message translates to:
  /// **'Open Source Licenses'**
  String get licenses;

  /// FAQ title
  ///
  /// In en, this message translates to:
  /// **'Frequently Asked Questions'**
  String get faq;

  /// Contact support button
  ///
  /// In en, this message translates to:
  /// **'Contact Support'**
  String get contactSupport;

  /// Send feedback button
  ///
  /// In en, this message translates to:
  /// **'Send Feedback'**
  String get sendFeedback;

  /// Account settings title
  ///
  /// In en, this message translates to:
  /// **'Account Settings'**
  String get accountSettings;

  /// User ID label
  ///
  /// In en, this message translates to:
  /// **'User ID'**
  String get userId;

  /// Display name label
  ///
  /// In en, this message translates to:
  /// **'Display Name'**
  String get displayName;

  /// Custom name label
  ///
  /// In en, this message translates to:
  /// **'Custom Name'**
  String get customName;

  /// Security token label
  ///
  /// In en, this message translates to:
  /// **'Security Token'**
  String get securityToken;

  /// Token saved indicator
  ///
  /// In en, this message translates to:
  /// **'Token Saved'**
  String get savedToken;

  /// Re-login button
  ///
  /// In en, this message translates to:
  /// **'Re-login'**
  String get reLogin;

  /// Delete account button
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// Delete account confirmation message
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account? This action cannot be undone.'**
  String get deleteAccountConfirm;

  /// Delete account warning
  ///
  /// In en, this message translates to:
  /// **'All your data will be permanently deleted.'**
  String get deleteAccountWarning;

  /// Account created label
  ///
  /// In en, this message translates to:
  /// **'Account Created'**
  String get accountCreated;

  /// Preferences section title
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// Auto sync toggle label
  ///
  /// In en, this message translates to:
  /// **'Auto Sync'**
  String get autoSync;

  /// Auto sync description
  ///
  /// In en, this message translates to:
  /// **'Automatically sync data with server'**
  String get autoSyncDesc;

  /// Notifications toggle label
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// Notifications description
  ///
  /// In en, this message translates to:
  /// **'Enable push notifications'**
  String get notificationsDesc;

  /// Decimal precision label
  ///
  /// In en, this message translates to:
  /// **'Decimal Precision'**
  String get decimalPrecision;

  /// System settings button
  ///
  /// In en, this message translates to:
  /// **'System Settings'**
  String get systemSettings;

  /// Copied to clipboard message
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get copiedToClipboard;

  /// Version label
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// Build number label
  ///
  /// In en, this message translates to:
  /// **'Build'**
  String get buildNumber;

  /// About app title
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutApp;

  /// No description provided for @faq1Question.
  ///
  /// In en, this message translates to:
  /// **'How do I create an account?'**
  String get faq1Question;

  /// No description provided for @faq1Answer.
  ///
  /// In en, this message translates to:
  /// **'Tap the \'Login Now\' button on the profile page and select \'Create New Account\'. Your security token will be generated automatically.'**
  String get faq1Answer;

  /// No description provided for @faq2Question.
  ///
  /// In en, this message translates to:
  /// **'How do I export my data?'**
  String get faq2Question;

  /// No description provided for @faq2Answer.
  ///
  /// In en, this message translates to:
  /// **'Go to Settings > Data Export and choose your preferred format (JSON or CSV).'**
  String get faq2Answer;

  /// No description provided for @faq3Question.
  ///
  /// In en, this message translates to:
  /// **'Is my data secure?'**
  String get faq3Question;

  /// No description provided for @faq3Answer.
  ///
  /// In en, this message translates to:
  /// **'Yes, your data is encrypted and stored securely. You have full control over your data.'**
  String get faq3Answer;

  /// No description provided for @faq4Question.
  ///
  /// In en, this message translates to:
  /// **'How do I switch regions?'**
  String get faq4Question;

  /// No description provided for @faq4Answer.
  ///
  /// In en, this message translates to:
  /// **'Go to Settings, find the Region section, and select your preferred region. Data will be reloaded.'**
  String get faq4Answer;

  /// Privacy policy content
  ///
  /// In en, this message translates to:
  /// **'Your privacy is important to us. This app collects minimal data necessary for functionality. Your financial data is encrypted and stored securely. We do not sell or share your personal information with third parties.'**
  String get privacyContent;

  /// Edit name dialog title
  ///
  /// In en, this message translates to:
  /// **'Edit Name'**
  String get editName;

  /// Display name input placeholder
  ///
  /// In en, this message translates to:
  /// **'Enter your display name'**
  String get enterDisplayName;

  /// No data message
  ///
  /// In en, this message translates to:
  /// **'No data available to export'**
  String get noDataToExport;

  /// Last synced label
  ///
  /// In en, this message translates to:
  /// **'Last Synced'**
  String get lastSynced;

  /// Sync now button
  ///
  /// In en, this message translates to:
  /// **'Sync Now'**
  String get syncNow;

  /// Syncing status
  ///
  /// In en, this message translates to:
  /// **'Syncing...'**
  String get syncing;

  /// Sync success message
  ///
  /// In en, this message translates to:
  /// **'Sync successful'**
  String get syncSuccess;

  /// Sync failed message
  ///
  /// In en, this message translates to:
  /// **'Sync failed'**
  String get syncFailed;

  /// Never synced status
  ///
  /// In en, this message translates to:
  /// **'Never'**
  String get never;

  /// Backup button
  ///
  /// In en, this message translates to:
  /// **'Backup'**
  String get backup;

  /// Restore button
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get restore;

  /// Backup data title
  ///
  /// In en, this message translates to:
  /// **'Backup Data'**
  String get backupData;

  /// Restore data title
  ///
  /// In en, this message translates to:
  /// **'Restore Data'**
  String get restoreData;

  /// Backup created message
  ///
  /// In en, this message translates to:
  /// **'Backup created successfully'**
  String get backupCreated;

  /// Backup failed message
  ///
  /// In en, this message translates to:
  /// **'Backup failed'**
  String get backupFailed;

  /// Restore success message
  ///
  /// In en, this message translates to:
  /// **'Data restored successfully'**
  String get restoreSuccess;

  /// Restore failed message
  ///
  /// In en, this message translates to:
  /// **'Restore failed'**
  String get restoreFailed;

  /// Backup warning message
  ///
  /// In en, this message translates to:
  /// **'Restoring will overwrite all current data. This action cannot be undone.'**
  String get backupWarning;

  /// Last backup label
  ///
  /// In en, this message translates to:
  /// **'Last Backup'**
  String get lastBackup;

  /// No backup file message
  ///
  /// In en, this message translates to:
  /// **'No backup file found'**
  String get noBackupFound;

  /// Delete account dialog title
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccountTitle;

  /// Type delete confirmation
  ///
  /// In en, this message translates to:
  /// **'Type DELETE to confirm'**
  String get typeDelete;

  /// Understand warning checkbox
  ///
  /// In en, this message translates to:
  /// **'I understand this action cannot be undone'**
  String get understandWarning;

  /// Account deleted message
  ///
  /// In en, this message translates to:
  /// **'Account deleted successfully'**
  String get accountDeleted;

  /// Offline status
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get offline;

  /// Offline banner message
  ///
  /// In en, this message translates to:
  /// **'You are offline - Some features may be limited'**
  String get youAreOffline;

  /// Sync pending status
  ///
  /// In en, this message translates to:
  /// **'Sync pending'**
  String get syncPending;

  /// Connection restored toast
  ///
  /// In en, this message translates to:
  /// **'Connection restored - Syncing...'**
  String get connectionRestored;

  /// Action failed due to offline status
  ///
  /// In en, this message translates to:
  /// **'Action failed - Please try again when online'**
  String get actionFailedOffline;

  /// Morning greeting on home page
  ///
  /// In en, this message translates to:
  /// **'Good morning'**
  String get homeGreetingMorning;

  /// Afternoon greeting on home page
  ///
  /// In en, this message translates to:
  /// **'Good afternoon'**
  String get homeGreetingAfternoon;

  /// Evening greeting on home page
  ///
  /// In en, this message translates to:
  /// **'Good evening'**
  String get homeGreetingEvening;

  /// Last sync time - just now
  ///
  /// In en, this message translates to:
  /// **'Synced just now'**
  String get homeSyncedJustNow;

  /// Last sync time - minutes ago
  ///
  /// In en, this message translates to:
  /// **'Synced {minutes} min ago'**
  String homeSyncedMinutes(int minutes);

  /// Last sync time - hours ago
  ///
  /// In en, this message translates to:
  /// **'Synced {hours}h ago'**
  String homeSyncedHours(int hours);

  /// Net worth label on home page
  ///
  /// In en, this message translates to:
  /// **'Net Worth'**
  String get homeNetWorth;

  /// This month label
  ///
  /// In en, this message translates to:
  /// **'This month'**
  String get homeThisMonth;

  /// Pending reviews label on home page
  ///
  /// In en, this message translates to:
  /// **'Pending Reviews'**
  String get homePendingReviews;

  /// No pending items message
  ///
  /// In en, this message translates to:
  /// **'No pending items'**
  String get homeNoPending;

  /// FIRE progress label on home page
  ///
  /// In en, this message translates to:
  /// **'FIRE Progress'**
  String get homeFireProgress;

  /// Set goal button text
  ///
  /// In en, this message translates to:
  /// **'Set Goal'**
  String get homeSetGoal;

  /// Years to FIRE label
  ///
  /// In en, this message translates to:
  /// **'Years to FIRE'**
  String get homeYearsToFire;

  /// Years to FIRE value
  ///
  /// In en, this message translates to:
  /// **'{years} years'**
  String homeYearsToFireValue(String years);

  /// Savings rate label on home page
  ///
  /// In en, this message translates to:
  /// **'Savings Rate'**
  String get homeSavingsRate;

  /// Quick actions section title
  ///
  /// In en, this message translates to:
  /// **'Quick Actions'**
  String get homeQuickActions;

  /// Add expense button
  ///
  /// In en, this message translates to:
  /// **'Add Expense'**
  String get homeAddExpense;

  /// Bill import button
  ///
  /// In en, this message translates to:
  /// **'Bill Import'**
  String get homeBillImport;

  /// Review pending button
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get homeReviewPending;

  /// Shortcuts section title
  ///
  /// In en, this message translates to:
  /// **'Shortcuts'**
  String get homeShortcuts;

  /// Assets shortcut label
  ///
  /// In en, this message translates to:
  /// **'Assets'**
  String get homeAssets;

  /// FIRE Journey shortcut label
  ///
  /// In en, this message translates to:
  /// **'FIRE Journey'**
  String get homeFireJourney;

  /// Settings shortcut label
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get homeSettings;

  /// Review center shortcut label
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get homeReviewCenter;

  /// Savings rate label in spending insights
  ///
  /// In en, this message translates to:
  /// **'Savings Rate'**
  String get homeSavingsRateLabel;

  /// Excellent savings rate label (>=60%)
  ///
  /// In en, this message translates to:
  /// **'Excellent'**
  String get homeSavingsRateExcellent;

  /// Good savings rate label (>=40%)
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get homeSavingsRateGood;

  /// Fair savings rate label (>=20%)
  ///
  /// In en, this message translates to:
  /// **'Fair'**
  String get homeSavingsRateFair;

  /// Needs work savings rate label (<20%)
  ///
  /// In en, this message translates to:
  /// **'Needs Work'**
  String get homeSavingsRateNeedsWork;

  /// Spending insights card title
  ///
  /// In en, this message translates to:
  /// **'Spending Insights'**
  String get homeSpendingInsights;

  /// Income this month label
  ///
  /// In en, this message translates to:
  /// **'Income'**
  String get homeIncomeThisMonth;

  /// Expense this month label
  ///
  /// In en, this message translates to:
  /// **'Expense'**
  String get homeExpenseThisMonth;

  /// Net savings label
  ///
  /// In en, this message translates to:
  /// **'Net Savings'**
  String get homeNetSavings;

  /// Warning message when overspending
  ///
  /// In en, this message translates to:
  /// **'Spending exceeds income this month'**
  String get homeOverspendingWarning;

  /// Recommendations section title
  ///
  /// In en, this message translates to:
  /// **'Recommendations'**
  String get homeRecommendations;

  /// Recommendation to set FIRE goal
  ///
  /// In en, this message translates to:
  /// **'Set your FIRE goal'**
  String get homeRecSetFireGoal;

  /// Description for set FIRE goal recommendation
  ///
  /// In en, this message translates to:
  /// **'Track your journey to financial independence'**
  String get homeRecSetFireGoalDesc;

  /// Recommendation to review pending transactions
  ///
  /// In en, this message translates to:
  /// **'Review {count} pending transactions'**
  String homeRecReviewPending(int count);

  /// Description for review pending recommendation
  ///
  /// In en, this message translates to:
  /// **'Keep your finances organized and up to date'**
  String get homeRecReviewPendingDesc;

  /// Recommendation to increase savings
  ///
  /// In en, this message translates to:
  /// **'Increase your savings rate'**
  String get homeRecIncreaseSavings;

  /// Description for increase savings recommendation
  ///
  /// In en, this message translates to:
  /// **'Aim for 20%+ to reach FIRE faster'**
  String get homeRecIncreaseSavingsDesc;

  /// Recommendation to reduce FIRE timeline
  ///
  /// In en, this message translates to:
  /// **'Reduce your FIRE timeline'**
  String get homeRecReduceTimeline;

  /// Description for reduce timeline recommendation
  ///
  /// In en, this message translates to:
  /// **'Consider increasing monthly contributions'**
  String get homeRecReduceTimelineDesc;

  /// Recommendation to reduce spending
  ///
  /// In en, this message translates to:
  /// **'Reduce overspending'**
  String get homeRecReduceSpending;

  /// Description for reduce spending recommendation
  ///
  /// In en, this message translates to:
  /// **'Your expenses exceed income this month'**
  String get homeRecReduceSpendingDesc;

  /// Please login prompt
  ///
  /// In en, this message translates to:
  /// **'Please login first'**
  String get pleaseLogin;

  /// Expense entry success message
  ///
  /// In en, this message translates to:
  /// **'Expense saved successfully'**
  String get expenseEntrySuccess;

  /// Title shown when NLP successfully creates a transaction
  ///
  /// In en, this message translates to:
  /// **'AI has filled in for you'**
  String get nlpTitleCreated;

  /// Title shown when NLP result needs user confirmation
  ///
  /// In en, this message translates to:
  /// **'AI parsed result, please confirm'**
  String get nlpTitleConfirm;

  /// Title shown when NLP needs additional information from user
  ///
  /// In en, this message translates to:
  /// **'Please complete info'**
  String get nlpTitleAsk;

  /// Title shown when a duplicate transaction is detected
  ///
  /// In en, this message translates to:
  /// **'Duplicate transaction detected'**
  String get nlpTitleDuplicate;

  /// Button to confirm and save the NLP-parsed transaction
  ///
  /// In en, this message translates to:
  /// **'Confirm Entry'**
  String get nlpBtnConfirmEntry;

  /// Button to navigate to transaction edit page after NLP creation
  ///
  /// In en, this message translates to:
  /// **'Edit Details'**
  String get nlpBtnEditDetails;

  /// Button to mark a detected duplicate as not a duplicate
  ///
  /// In en, this message translates to:
  /// **'Not Duplicate'**
  String get nlpBtnNotDuplicate;

  /// Button to confirm a transaction is a duplicate
  ///
  /// In en, this message translates to:
  /// **'Is Duplicate'**
  String get nlpBtnIsDuplicate;

  /// Button to complete the NLP dialogue flow
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get nlpBtnComplete;

  /// High confidence level label for NLP parsing result
  ///
  /// In en, this message translates to:
  /// **'Very confident'**
  String get nlpConfidenceHigh;

  /// Medium confidence level label for NLP parsing result
  ///
  /// In en, this message translates to:
  /// **'Fairly sure'**
  String get nlpConfidenceMedium;

  /// Low confidence level label for NLP parsing result
  ///
  /// In en, this message translates to:
  /// **'Not sure'**
  String get nlpConfidenceLow;

  /// Label for transaction amount field in NLP result
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get nlpFieldAmount;

  /// Label for transaction date field in NLP result
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get nlpFieldDate;

  /// Label for transaction category field in NLP result
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get nlpFieldCategory;

  /// Label for payee field in expense transactions (NLP result)
  ///
  /// In en, this message translates to:
  /// **'Merchant'**
  String get nlpFieldPayeeExpense;

  /// Label for payee field in income transactions (NLP result)
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get nlpFieldPayeeIncome;

  /// Label for payee field when transaction type is unknown (NLP result)
  ///
  /// In en, this message translates to:
  /// **'Payee'**
  String get nlpFieldPayeeDefault;

  /// Label for transaction narration/notes field in NLP result
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get nlpFieldNarration;

  /// Warning shown when NLP fails to parse a field
  ///
  /// In en, this message translates to:
  /// **'{fieldName} not recognized, please fill in manually'**
  String nlpMissingFieldWarning(String fieldName);

  /// Message shown when NLP cannot match the payee to a known entity
  ///
  /// In en, this message translates to:
  /// **'Payee not matched, please confirm transaction'**
  String get nlpPayeeNotMatched;

  /// Suggested payee name from NLP matching
  ///
  /// In en, this message translates to:
  /// **'Suggested: {suggestedPayee}'**
  String nlpPayeeSuggested(String suggestedPayee);

  /// Prompt to select a different payee from suggestions
  ///
  /// In en, this message translates to:
  /// **'Select alternative payee'**
  String get nlpSelectAlternativePayee;

  /// Button to keep the new transaction in duplicate detection
  ///
  /// In en, this message translates to:
  /// **'New Entry'**
  String get nlpDuplicateNew;

  /// Button to use the existing transaction in duplicate detection
  ///
  /// In en, this message translates to:
  /// **'Existing Entry'**
  String get nlpDuplicateExisting;

  /// Message when duplicate transaction is skipped
  ///
  /// In en, this message translates to:
  /// **'Duplicate transaction ignored'**
  String get nlpDuplicateIgnored;

  /// Button or title for editing a transaction
  ///
  /// In en, this message translates to:
  /// **'Edit Transaction'**
  String get nlpEditTransaction;

  /// Error message when NLP session has expired
  ///
  /// In en, this message translates to:
  /// **'Session expired, please try again'**
  String get nlpNoSessionError;

  /// Confidence hint text for high confidence NLP result
  ///
  /// In en, this message translates to:
  /// **'Very confident — please confirm or edit'**
  String get nlpConfidenceHintHigh;

  /// Confidence hint text for medium confidence NLP result
  ///
  /// In en, this message translates to:
  /// **'Fairly sure — please review'**
  String get nlpConfidenceHintMedium;

  /// Confidence hint text for low confidence NLP result
  ///
  /// In en, this message translates to:
  /// **'Not sure — please verify carefully'**
  String get nlpConfidenceHintLow;

  /// Label indicating a field is required in NLP form
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get nlpFieldRequired;

  /// Placeholder or prompt to enter transaction amount
  ///
  /// In en, this message translates to:
  /// **'Enter amount'**
  String get nlpEnterAmount;

  /// Select category prompt
  ///
  /// In en, this message translates to:
  /// **'Select category'**
  String get nlpSelectCategory;

  /// Food category label
  ///
  /// In en, this message translates to:
  /// **'Food'**
  String get categoryFood;

  /// Cafe category label
  ///
  /// In en, this message translates to:
  /// **'Cafe'**
  String get categoryCafe;

  /// Transport category label
  ///
  /// In en, this message translates to:
  /// **'Transport'**
  String get categoryTransport;

  /// Shopping category label
  ///
  /// In en, this message translates to:
  /// **'Shopping'**
  String get categoryShopping;

  /// Entertainment category label
  ///
  /// In en, this message translates to:
  /// **'Entertainment'**
  String get categoryEntertainment;

  /// Salary category label
  ///
  /// In en, this message translates to:
  /// **'Salary'**
  String get categorySalary;

  /// Bonus category label
  ///
  /// In en, this message translates to:
  /// **'Bonus'**
  String get categoryBonus;

  /// Groceries category label
  ///
  /// In en, this message translates to:
  /// **'Groceries'**
  String get categoryGroceries;

  /// Health category label
  ///
  /// In en, this message translates to:
  /// **'Health'**
  String get categoryHealth;

  /// Car category label
  ///
  /// In en, this message translates to:
  /// **'Car'**
  String get categoryCar;

  /// Clothing category label
  ///
  /// In en, this message translates to:
  /// **'Clothing'**
  String get categoryClothing;

  /// Delivery category label
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get categoryDelivery;

  /// Travel category label
  ///
  /// In en, this message translates to:
  /// **'Travel'**
  String get categoryTravel;

  /// Utilities category label
  ///
  /// In en, this message translates to:
  /// **'Utilities'**
  String get categoryUtilities;

  /// Transfer category label
  ///
  /// In en, this message translates to:
  /// **'Transfer'**
  String get categoryTransfer;

  /// Salary income category label
  ///
  /// In en, this message translates to:
  /// **'Salary'**
  String get categoryIncomeSalary;

  /// Bonus income category label
  ///
  /// In en, this message translates to:
  /// **'Bonus'**
  String get categoryIncomeBonus;

  /// Dividend income category label
  ///
  /// In en, this message translates to:
  /// **'Dividend'**
  String get categoryIncomeDividend;

  /// Interest income category label
  ///
  /// In en, this message translates to:
  /// **'Interest'**
  String get categoryIncomeInterest;

  /// Reimbursement income category label
  ///
  /// In en, this message translates to:
  /// **'Reimbursement'**
  String get categoryIncomeReimbursement;

  /// Stock investment category label
  ///
  /// In en, this message translates to:
  /// **'Stock'**
  String get categoryInvestmentStock;

  /// Fund investment category label
  ///
  /// In en, this message translates to:
  /// **'Fund'**
  String get categoryInvestmentFund;

  /// Bond investment category label
  ///
  /// In en, this message translates to:
  /// **'Bond'**
  String get categoryInvestmentBond;

  /// ETF investment category label
  ///
  /// In en, this message translates to:
  /// **'ETF'**
  String get categoryInvestmentEtf;

  /// Fixed income investment category label
  ///
  /// In en, this message translates to:
  /// **'Fixed Income'**
  String get categoryInvestmentFixed;

  /// Derivatives investment category label
  ///
  /// In en, this message translates to:
  /// **'Derivatives'**
  String get categoryInvestmentDerivatives;

  /// Bank deposit category label
  ///
  /// In en, this message translates to:
  /// **'Deposit'**
  String get categoryBankingDeposit;

  /// Bank withdrawal category label
  ///
  /// In en, this message translates to:
  /// **'Withdrawal'**
  String get categoryBankingWithdraw;

  /// Bank savings category label
  ///
  /// In en, this message translates to:
  /// **'Savings'**
  String get categoryBankingSavings;

  /// Fixed deposit category label
  ///
  /// In en, this message translates to:
  /// **'Fixed Deposit'**
  String get categoryBankingFixedDeposit;

  /// Fixed deposit maturity category label
  ///
  /// In en, this message translates to:
  /// **'Fixed Deposit Maturity'**
  String get categoryBankingFixedMaturity;

  /// Foreign exchange category label
  ///
  /// In en, this message translates to:
  /// **'Foreign Exchange'**
  String get categoryBankingForex;

  /// Credit card payment transfer category label
  ///
  /// In en, this message translates to:
  /// **'Credit Card Payment'**
  String get categoryTransferCreditCard;

  /// Loan payment transfer category label
  ///
  /// In en, this message translates to:
  /// **'Loan Payment'**
  String get categoryTransferLoan;

  /// Repayment transfer category label
  ///
  /// In en, this message translates to:
  /// **'Repayment'**
  String get categoryTransferRepay;

  /// Red packet transfer category label
  ///
  /// In en, this message translates to:
  /// **'Red Packet'**
  String get categoryTransferRedpacket;

  /// Credit card expense category label
  ///
  /// In en, this message translates to:
  /// **'Credit Card Expense'**
  String get categoryExpenseCreditCard;

  /// Huabei expense category label
  ///
  /// In en, this message translates to:
  /// **'Huabei'**
  String get categoryExpenseHuabei;

  /// Baitiao expense category label
  ///
  /// In en, this message translates to:
  /// **'Baitiao'**
  String get categoryExpenseBaitiao;

  /// No parsed data available message
  ///
  /// In en, this message translates to:
  /// **'No parsed data'**
  String get nlpNoParsedData;

  /// Checking account type label
  ///
  /// In en, this message translates to:
  /// **'Checking'**
  String get accountTypeChecking;

  /// Savings account type label
  ///
  /// In en, this message translates to:
  /// **'Savings'**
  String get accountTypeSavings;

  /// Investment account type label
  ///
  /// In en, this message translates to:
  /// **'Investment'**
  String get accountTypeInvestment;

  /// Credit account type label
  ///
  /// In en, this message translates to:
  /// **'Credit'**
  String get accountTypeCredit;

  /// Empty state message when there are no accounts
  ///
  /// In en, this message translates to:
  /// **'No accounts yet'**
  String get noAccountsYet;

  /// Transaction list page title when no account filter is active
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get transactionRecordTitle;

  /// Filter bar label shown when filters are active
  ///
  /// In en, this message translates to:
  /// **'Filtered'**
  String get filtered;

  /// Filter bar label that opens the filter sheet
  ///
  /// In en, this message translates to:
  /// **'Filter transactions'**
  String get filterTransactions;

  /// Button to load more transactions
  ///
  /// In en, this message translates to:
  /// **'Load more'**
  String get loadMore;

  /// Transaction filter sheet title
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// Transaction status label: active
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get transactionStatusActive;

  /// Transaction status label: voided
  ///
  /// In en, this message translates to:
  /// **'Voided'**
  String get transactionStatusVoided;

  /// Summary of loaded vs total transaction count
  ///
  /// In en, this message translates to:
  /// **'{count} / {total} transactions'**
  String transactionSummary(int count, int total);

  /// Save action
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get actionSave;

  /// Delete action
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get actionDelete;

  /// Close action
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get actionClose;

  /// Transaction edit page title
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get txEditTitle;

  /// Amount field label
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get txAmount;

  /// Transfer transaction type
  ///
  /// In en, this message translates to:
  /// **'Transfer'**
  String get txTypeTransfer;

  /// Expense transaction type
  ///
  /// In en, this message translates to:
  /// **'Expense'**
  String get txTypeExpense;

  /// Income transaction type
  ///
  /// In en, this message translates to:
  /// **'Income'**
  String get txTypeIncome;

  /// AI parse confidence label
  ///
  /// In en, this message translates to:
  /// **'AI confidence'**
  String get txConfidence;

  /// Date field label
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get txDate;

  /// Payee field label
  ///
  /// In en, this message translates to:
  /// **'Payee'**
  String get txPayee;

  /// Category field label
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get txCategory;

  /// Account field label
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get txAccount;

  /// Remember category rule label
  ///
  /// In en, this message translates to:
  /// **'Remember category'**
  String get txLearnRule;

  /// Remember category rule description
  ///
  /// In en, this message translates to:
  /// **'Future transactions from this payee will auto-categorize'**
  String get txLearnRuleHint;

  /// Description field label
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get txDescription;

  /// Description field placeholder
  ///
  /// In en, this message translates to:
  /// **'Transaction description'**
  String get txDescriptionPlaceholder;

  /// Tags field label
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get txTags;

  /// Add tag button
  ///
  /// In en, this message translates to:
  /// **'Add tag'**
  String get txAddTag;

  /// Add tag input placeholder
  ///
  /// In en, this message translates to:
  /// **'Tag name'**
  String get txAddTagPlaceholder;

  /// Tag input chip placeholder
  ///
  /// In en, this message translates to:
  /// **'Search or create tag'**
  String get txTagSearchOrNew;

  /// Header shown above common-tag suggestions when the input is empty
  ///
  /// In en, this message translates to:
  /// **'Recent tags'**
  String get txTagCommonTags;

  /// Shown when no tag suggestions match
  ///
  /// In en, this message translates to:
  /// **'No matching tags'**
  String get txTagNoResults;

  /// Create-new-tag suggestion row
  ///
  /// In en, this message translates to:
  /// **'Create new tag \"{tag}\"'**
  String txTagCreateNew(String tag);

  /// Postings section title
  ///
  /// In en, this message translates to:
  /// **'Postings'**
  String get txPostingsTitle;

  /// Add posting button
  ///
  /// In en, this message translates to:
  /// **'Add posting'**
  String get txAddPosting;

  /// Transaction source label
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get txSource;

  /// Transaction created label
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get txCreated;

  /// Transaction ID label
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get txId;

  /// Postings balanced state
  ///
  /// In en, this message translates to:
  /// **'Balanced'**
  String get balanceBalanced;

  /// Postings unbalanced state
  ///
  /// In en, this message translates to:
  /// **'Unbalanced'**
  String get balanceUnbalanced;

  /// Auto-fill posting button
  ///
  /// In en, this message translates to:
  /// **'Auto-fill'**
  String get balanceAutoFill;

  /// Balance delta label
  ///
  /// In en, this message translates to:
  /// **'Delta'**
  String get balanceDelta;

  /// Interpolated posting label
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get txPostingInterpolated;

  /// Account detail page title
  ///
  /// In en, this message translates to:
  /// **'Account Detail'**
  String get accountDetailTitle;

  /// Cost basis explanation
  ///
  /// In en, this message translates to:
  /// **'Cost basis records the acquisition cost of each holding; market value fluctuates with prices, and the difference is the unrealized P&L.'**
  String get investCostBasisHint;

  /// Account type info label
  ///
  /// In en, this message translates to:
  /// **'Account Type'**
  String get investInfoAccountType;

  /// Custodian info label
  ///
  /// In en, this message translates to:
  /// **'Custodian'**
  String get investInfoCustodian;

  /// Holdings count info label
  ///
  /// In en, this message translates to:
  /// **'Holdings'**
  String get investInfoHoldingsCount;

  /// Account standard info label
  ///
  /// In en, this message translates to:
  /// **'Standard'**
  String get investInfoStandard;

  /// Holdings section title
  ///
  /// In en, this message translates to:
  /// **'Holdings · cost basis'**
  String get investHoldingsTitle;

  /// Holding cost label
  ///
  /// In en, this message translates to:
  /// **'Cost'**
  String get holdingCost;

  /// Holding unit price label
  ///
  /// In en, this message translates to:
  /// **'Unit price'**
  String get holdingUnitPrice;

  /// Holding market value label
  ///
  /// In en, this message translates to:
  /// **'Market value'**
  String get holdingMarketValue;

  /// Holding profit and loss label
  ///
  /// In en, this message translates to:
  /// **'P&L'**
  String get holdingPnl;

  /// Total cost summary label
  ///
  /// In en, this message translates to:
  /// **'Total Cost'**
  String get investTotalCost;

  /// Total market value summary label
  ///
  /// In en, this message translates to:
  /// **'Total Market Value'**
  String get investTotalMarketValue;

  /// Total P&L summary label
  ///
  /// In en, this message translates to:
  /// **'Total P&L'**
  String get investTotalPnl;

  /// Reconciliation entry label
  ///
  /// In en, this message translates to:
  /// **'Balance Reconciliation'**
  String get reconcileEntry;

  /// Reconciliation page title
  ///
  /// In en, this message translates to:
  /// **'Balance Reconciliation'**
  String get reconcileTitle;

  /// Book balance label
  ///
  /// In en, this message translates to:
  /// **'Book Balance'**
  String get reconcileBookBalance;

  /// Book balance hint
  ///
  /// In en, this message translates to:
  /// **'System-calculated'**
  String get reconcileBookBalanceHint;

  /// Actual balance form title
  ///
  /// In en, this message translates to:
  /// **'Verify actual balance'**
  String get reconcileFormTitle;

  /// Reconciliation date label
  ///
  /// In en, this message translates to:
  /// **'Reconciliation date'**
  String get reconcileDate;

  /// Actual balance label
  ///
  /// In en, this message translates to:
  /// **'Actual balance'**
  String get reconcileActual;

  /// Actual balance placeholder
  ///
  /// In en, this message translates to:
  /// **'Enter actual balance'**
  String get reconcileActualPlaceholder;

  /// Difference label
  ///
  /// In en, this message translates to:
  /// **'Difference'**
  String get reconcileDifference;

  /// Tolerance hint
  ///
  /// In en, this message translates to:
  /// **'Difference within ¥1.00 will only be recorded as a balance assertion, skipping the adjustment entry.'**
  String get reconcileToleranceHint;

  /// Record assertion button
  ///
  /// In en, this message translates to:
  /// **'Record assertion'**
  String get reconcileRecordAssertion;

  /// Generate adjustment entry button
  ///
  /// In en, this message translates to:
  /// **'Generate adjustment entry'**
  String get reconcileGenerateEntry;

  /// Cancel action
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get txCancel;

  /// Delete confirmation message
  ///
  /// In en, this message translates to:
  /// **'Mark this transaction as voided?'**
  String get txDeleteConfirmMessage;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
