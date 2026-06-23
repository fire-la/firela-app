// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'FIREla';

  @override
  String get welcomeMessage => 'Welcome to FIREla';

  @override
  String get appDescription =>
      'Your personal finance companion with data sovereignty';

  @override
  String get toggleTheme => 'Toggle Theme';

  @override
  String get changeLanguage => 'Change Language';

  @override
  String get currentLocale => 'Current Locale';

  @override
  String get currentTheme => 'Current Theme';

  @override
  String get featureDataSovereignty => 'Data Sovereignty';

  @override
  String get featureDataSovereigntyDesc =>
      'Your financial data belongs to you. Complete ownership and control.';

  @override
  String get featureRealTimeSync => 'Real-time Sync';

  @override
  String get featureRealTimeSyncDesc =>
      'Stay synchronized with your beancount backend seamlessly.';

  @override
  String get featureOfflineSupport => 'Offline Support';

  @override
  String get featureOfflineSupportDesc =>
      'Works offline, syncs when connection is restored.';

  @override
  String get accountsTitle => 'Accounts';

  @override
  String get createAccount => 'Create Account';

  @override
  String get settings => 'Settings';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get retry => 'Retry';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get tabFireJourney => 'FIRE Journey';

  @override
  String get tabAssets => 'Assets';

  @override
  String get tabMine => 'Mine';

  @override
  String fireJourneyDays(int days) {
    return 'You\'ve persisted for $days days';
  }

  @override
  String get watchFirePlan => 'Watch Fire Plan';

  @override
  String get progress => 'Progress';

  @override
  String get safety => 'Safety';

  @override
  String get netAssets => 'Net Assets (CNY)';

  @override
  String get dailyIncome => 'Daily Income (CNY)';

  @override
  String get netProfit => 'Net Profit';

  @override
  String freeMonths(int months) {
    return '$months Months Fund';
  }

  @override
  String get assetsLiabilities => 'Assets & Liabilities';

  @override
  String get incomeExpense => 'Income & Expense';

  @override
  String get totalAssets => 'Total Assets';

  @override
  String get totalLiabilities => 'Total Liabilities';

  @override
  String get assets => 'Assets';

  @override
  String get liabilities => 'Liabilities';

  @override
  String get details => 'Details';

  @override
  String get assetDistribution => 'Asset Distribution';

  @override
  String get assetChange => 'Asset Change Trend';

  @override
  String get monthlyReturn => 'Monthly Return (CNY)';

  @override
  String get viewAll => 'View All';

  @override
  String monthlyIncrease(String month, String amount) {
    return '$month +$amount';
  }

  @override
  String get monthlyExpense => 'Monthly Expense (CNY)';

  @override
  String get income => 'Income';

  @override
  String get budgetManagement => 'Budget Management';

  @override
  String get expenseTrend => 'Expense Trend';

  @override
  String used(int percent) {
    return 'Used $percent%';
  }

  @override
  String remaining(String amount) {
    return 'Remaining ¥$amount';
  }

  @override
  String get expenseDetails => 'Expense Details';

  @override
  String get expenseCategories => 'Expense Categories';

  @override
  String get noTransactionRecords => 'No transactions';

  @override
  String get loadFailed => 'Load failed';

  @override
  String get recent6Months => 'Last 6 months';

  @override
  String get recent1Month => 'Last month';

  @override
  String get recent3Months => 'Last 3 months';

  @override
  String get recent1Year => 'Last year';

  @override
  String expenseShare(int percent) {
    return '$percent% of spending';
  }

  @override
  String get total => 'Total';

  @override
  String get food => 'Food';

  @override
  String get transportation => 'Transportation';

  @override
  String get entertainment => 'Entertainment';

  @override
  String get becomeMember => 'Become IGN Member';

  @override
  String get memberBenefit =>
      'Unlock exclusive AI financial services and join Fire Journey';

  @override
  String get activateNow => 'Activate Now';

  @override
  String get dataExport => 'Data Export';

  @override
  String get privacyStatement => 'Privacy Statement';

  @override
  String get aboutUs => 'About Us';

  @override
  String get helpCenter => 'Help Center';

  @override
  String get suggestions => 'Suggestions';

  @override
  String get logout => 'Logout';

  @override
  String get loginNow => 'Login Now';

  @override
  String get statistics => 'Statistics';

  @override
  String get balanced => 'Balanced';

  @override
  String get aggressive => 'Aggressive';

  @override
  String get conservative => 'Conservative';

  @override
  String get aiAccounting => 'AI Accounting';

  @override
  String get manualAccounting => 'Manual Accounting';

  @override
  String get enterExpenseDescription =>
      'Enter expense description, e.g. \"Dinner 20 yuan\"';

  @override
  String get photoRecognition => 'Photo Recognition';

  @override
  String get billImport => 'Bill Import';

  @override
  String get analyzing => 'Analyzing...';

  @override
  String get aiParseSuccess => 'AI Parse Success';

  @override
  String get expense => 'Expense';

  @override
  String get date => 'Date';

  @override
  String get expenseType => 'Expense Type';

  @override
  String get expenseAmount => 'Expense Amount';

  @override
  String get notes => 'Notes';

  @override
  String get confirm => 'Confirm';

  @override
  String get pleaseSelect => 'Please Select';

  @override
  String get enterAmount => 'Enter Amount';

  @override
  String get expenseTypeNotRecognized =>
      'Expense type not recognized, please select manually';

  @override
  String get expenseAmountNotRecognized =>
      'Expense amount not recognized, please enter manually';

  @override
  String get missingRequiredFields => 'Missing Required Fields';

  @override
  String get billImportTitle => 'Bill Import';

  @override
  String get importBill => 'Import Bill';

  @override
  String get parseBill => 'Parse Bill';

  @override
  String get pleaseImportAlipayBill => 'Please import bill file';

  @override
  String get addFile => 'Add File';

  @override
  String get supportedFormats => 'Supports Excel or CSV format, max 2MB';

  @override
  String get howToGetBill => 'How to get bill?';

  @override
  String get parsingBill => 'Parsing bill, please wait...';

  @override
  String get reupload => 'Re-upload';

  @override
  String accountingComplete(int count) {
    return '$count accounting entries completed';
  }

  @override
  String get reviewCenterTitle => 'Review Center';

  @override
  String get reviewCenterAll => 'All';

  @override
  String get reviewCenterHigh => 'High Confidence';

  @override
  String get reviewCenterMedium => 'Needs Confirmation';

  @override
  String get reviewCenterLow => 'Suggested Review';

  @override
  String get reviewCenterEmpty => 'No pending transactions';

  @override
  String get reviewCenterKeep => 'Keep';

  @override
  String get reviewCenterDelete => 'Delete';

  @override
  String get reviewCenterSave => 'Save';

  @override
  String get reviewCenterConfirmDelete => 'Confirm Delete';

  @override
  String get reviewCenterConfirmDeleteMessage =>
      'Are you sure you want to delete this transaction? This action cannot be undone.';

  @override
  String get reviewCenterConfirmSuccess => 'Transaction confirmed';

  @override
  String get reviewCenterDeleteSuccess => 'Transaction deleted';

  @override
  String get reviewCenterSaveSuccess => 'Saved successfully';

  @override
  String get reviewCenterLoading => 'Loading...';

  @override
  String get reviewCenterError => 'Failed to load, please retry';

  @override
  String get reviewCenterDetailTitle => 'Transaction Detail';

  @override
  String get aiChatComingSoon => 'AI Chat (Coming Soon)';

  @override
  String get reviewCenterConfidence => 'AI Confidence Level';

  @override
  String get reviewCenterAccount => 'Account';

  @override
  String get reviewCenterMerchant => 'Merchant';

  @override
  String get reviewCenterAmount => 'Amount';

  @override
  String get reviewCenterDateTime => 'Date & Time';

  @override
  String get reviewCenterNotes => 'Notes';

  @override
  String get reviewCenterExpense => 'Expense';

  @override
  String get reviewCenterIncome => 'Income';

  @override
  String get reviewCenterInvalidId => 'Invalid transaction ID';

  @override
  String get reviewCenterLoadFailed => 'Failed to load, please retry';

  @override
  String get reviewCenterDeleteFailed => 'Failed to delete, please retry';

  @override
  String get reviewCenterSaveFailed => 'Failed to save, please retry';

  @override
  String get reviewCenterEnterAccount => 'Please enter account name';

  @override
  String get reviewCenterEnterMerchant => 'Please enter merchant name';

  @override
  String get reviewCenterEnterValidAmount => 'Please enter a valid amount';

  @override
  String get region => 'Region';

  @override
  String get selectRegion => 'Select Region';

  @override
  String get switchRegion => 'Switch Region';

  @override
  String get switchRegionConfirm =>
      'Data will be reloaded after switching region. Continue?';

  @override
  String regionSwitched(String name) {
    return 'Switched to $name region';
  }

  @override
  String get scanReceipt => 'Scan Receipt';

  @override
  String get takePhoto => 'Take Photo';

  @override
  String get chooseFromGallery => 'Choose from Gallery';

  @override
  String get scanReceiptTitle => 'Scan Receipt Recognition';

  @override
  String get processingOcr => 'Processing receipt...';

  @override
  String get ocrResultTitle => 'OCR Result';

  @override
  String get ocrResultTitleLowConfidence => 'OCR Result (Low Confidence)';

  @override
  String get ocrParsedResult => 'Parsed Result';

  @override
  String get ocrConfidence => 'Confidence';

  @override
  String get ocrLineItemCount => 'Line Items';

  @override
  String get ocrDate => 'Date';

  @override
  String get ocrMerchant => 'Merchant';

  @override
  String get ocrMerchantHint => 'Enter merchant name';

  @override
  String get ocrAmount => 'Amount';

  @override
  String get ocrUnrecognized => '(Unrecognized)';

  @override
  String get ocrEntryMode => 'Entry Mode';

  @override
  String get ocrEntryModeWhole => 'Whole Receipt';

  @override
  String get ocrEntryModeItemized => 'Itemized';

  @override
  String get ocrLineItems => 'Line Items';

  @override
  String get ocrNoLineItems => 'No line items';

  @override
  String get ocrAddItem => 'Add Item';

  @override
  String get ocrProductName => 'Product Name';

  @override
  String get ocrErrorNameEmpty => 'Product name is empty, please fill in';

  @override
  String get ocrErrorPriceMissing => 'Price is missing, please fill in';

  @override
  String get ocrErrorNameSuspect =>
      'Product name may be incorrect, please verify';

  @override
  String get ocrLineItemsTotal => 'Line Items Total';

  @override
  String get categorizationPreviewTitle => 'Categorization Preview';

  @override
  String get items => 'items';

  @override
  String get needsReview => 'need review';

  @override
  String get confirmImport => 'Confirm Import';

  @override
  String get editCategories => 'Edit Categories';

  @override
  String get avgConfidence => 'Average Confidence';

  @override
  String get allHighConfidence => 'All High Confidence';

  @override
  String get someNeedReview => 'Some Need Review';

  @override
  String get importProgressIdle => 'Ready to Import';

  @override
  String get importProgressUploading => 'Uploading';

  @override
  String get importProgressParsing => 'Parsing';

  @override
  String get importProgressCategorizing => 'Categorizing';

  @override
  String get importProgressReviewing => 'Reviewing';

  @override
  String get importProgressComplete => 'Complete';

  @override
  String get importProgressError => 'Error';

  @override
  String get importErrorRetry => 'Please try again';

  @override
  String importErrorFileTooLarge(String size) {
    return 'File is too large. Please select a file smaller than $size.';
  }

  @override
  String get importErrorUnsupportedFormat =>
      'Unsupported file format. Please use CSV or Excel files.';

  @override
  String get importErrorNetwork =>
      'Network error. Please check your connection and try again.';

  @override
  String get importErrorParsingFailed =>
      'Failed to parse bill. Please check the file format.';

  @override
  String get importErrorDuplicateDetected =>
      'Duplicate transactions detected and skipped.';

  @override
  String get importErrorGeneric => 'An error occurred. Please try again.';

  @override
  String get importErrorViewDetails => 'View Details';

  @override
  String get importErrorRetryButton => 'Retry';

  @override
  String get batchImportSummaryTitle => 'Import Summary';

  @override
  String get batchImportSuccessfullyImported => 'Successfully Imported';

  @override
  String get batchImportDuplicatesSkipped => 'Duplicates Skipped';

  @override
  String get batchImportRequiresReview => 'Requires Review';

  @override
  String get batchImportViewImported => 'View Imported';

  @override
  String get batchImportReviewLowConfidence => 'Review Low Confidence';

  @override
  String get batchImportContinueImport => 'Continue Import';

  @override
  String get batchImportDone => 'Done';

  @override
  String batchImportItemsImported(int count) {
    return '$count items imported successfully';
  }

  @override
  String get liabilitiesByType => 'Liabilities by Type';

  @override
  String get creditCards => 'Credit Cards';

  @override
  String get loans => 'Loans';

  @override
  String get mortgages => 'Mortgages';

  @override
  String get otherLiabilities => 'Other Liabilities';

  @override
  String get liabilityDetails => 'Liability Details';

  @override
  String get period1Month => '1M';

  @override
  String get period3Months => '3M';

  @override
  String get period6Months => '6M';

  @override
  String get period1Year => '1Y';

  @override
  String get fireGoal => 'FIRE Goal';

  @override
  String get fireNumber => 'FIRE Number';

  @override
  String get savingsRate => 'Savings Rate';

  @override
  String get yearsToFire => 'Years to FIRE';

  @override
  String get milestoneAchieved => 'Milestone Achieved!';

  @override
  String get celebrateProgress =>
      'Congratulations on reaching this milestone on your FIRE journey!';

  @override
  String get refreshToSeeUpdates =>
      'Pull to refresh and see your latest progress';

  @override
  String get fireProjectionTitle => 'FIRE Projection';

  @override
  String yearsToFireValue(String years) {
    return '$years years to FIRE';
  }

  @override
  String projectionYearValue(String years) {
    return 'Year $years';
  }

  @override
  String get baselineScenario => 'Baseline';

  @override
  String get aggressiveScenario => 'Aggressive';

  @override
  String get scenarioModeling => 'Scenario Modeling';

  @override
  String get reset => 'Reset';

  @override
  String get monthlySavings => 'Monthly Savings';

  @override
  String adjustedSavingsValue(String amount) {
    return 'Adjusted: $amount';
  }

  @override
  String get expectedReturn => 'Expected Return';

  @override
  String get returnRateDescription => 'Annual investment return rate';

  @override
  String get retirementSpending => 'Retirement Spending';

  @override
  String get retirementSpendingDescription =>
      'As percentage of current expenses';

  @override
  String get scenarioImpactPositive =>
      'Adjusting these settings shows how you can accelerate your FIRE timeline.';

  @override
  String get scenarioImpactNeutral =>
      'Modify the sliders above to see how changes affect your FIRE timeline.';

  @override
  String get fireTypes => 'FIRE Types';

  @override
  String get fullFire => 'Full FIRE';

  @override
  String get fullFireDescription =>
      'Traditional FIRE with full financial independence';

  @override
  String get coastFire => 'Coast FIRE';

  @override
  String get coastFireDescription =>
      'Save enough early, let it grow without adding more';

  @override
  String get baristaFire => 'Barista FIRE';

  @override
  String get baristaFireDescription =>
      'Work part-time, cover some expenses with savings';

  @override
  String get leanFire => 'Lean FIRE';

  @override
  String get leanFireDescription => 'Minimalist lifestyle with lower expenses';

  @override
  String get targetAmount => 'Target';

  @override
  String get currentProgress => 'Progress';

  @override
  String get monthlyNeeded => 'Monthly';

  @override
  String get timeToReach => 'Time';

  @override
  String yearsValue(String years) {
    return '$years years';
  }

  @override
  String get alreadyAchieved => 'Achieved!';

  @override
  String get exportData => 'Export Data';

  @override
  String get exportAsJson => 'Export as JSON';

  @override
  String get exportAsCsv => 'Export as CSV';

  @override
  String get exporting => 'Exporting...';

  @override
  String get exportSuccess => 'Export successful';

  @override
  String get exportFailed => 'Export failed';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get licenses => 'Open Source Licenses';

  @override
  String get faq => 'Frequently Asked Questions';

  @override
  String get contactSupport => 'Contact Support';

  @override
  String get sendFeedback => 'Send Feedback';

  @override
  String get accountSettings => 'Account Settings';

  @override
  String get userId => 'User ID';

  @override
  String get displayName => 'Display Name';

  @override
  String get customName => 'Custom Name';

  @override
  String get securityToken => 'Security Token';

  @override
  String get savedToken => 'Token Saved';

  @override
  String get reLogin => 'Re-login';

  @override
  String get deleteAccount => 'Delete Account';

  @override
  String get deleteAccountConfirm =>
      'Are you sure you want to delete your account? This action cannot be undone.';

  @override
  String get deleteAccountWarning =>
      'All your data will be permanently deleted.';

  @override
  String get accountCreated => 'Account Created';

  @override
  String get preferences => 'Preferences';

  @override
  String get autoSync => 'Auto Sync';

  @override
  String get autoSyncDesc => 'Automatically sync data with server';

  @override
  String get notifications => 'Notifications';

  @override
  String get notificationsDesc => 'Enable push notifications';

  @override
  String get decimalPrecision => 'Decimal Precision';

  @override
  String get systemSettings => 'System Settings';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get version => 'Version';

  @override
  String get buildNumber => 'Build';

  @override
  String get aboutApp => 'About';

  @override
  String get faq1Question => 'How do I create an account?';

  @override
  String get faq1Answer =>
      'Tap the \'Login Now\' button on the profile page and select \'Create New Account\'. Your security token will be generated automatically.';

  @override
  String get faq2Question => 'How do I export my data?';

  @override
  String get faq2Answer =>
      'Go to Settings > Data Export and choose your preferred format (JSON or CSV).';

  @override
  String get faq3Question => 'Is my data secure?';

  @override
  String get faq3Answer =>
      'Yes, your data is encrypted and stored securely. You have full control over your data.';

  @override
  String get faq4Question => 'How do I switch regions?';

  @override
  String get faq4Answer =>
      'Go to Settings, find the Region section, and select your preferred region. Data will be reloaded.';

  @override
  String get privacyContent =>
      'Your privacy is important to us. This app collects minimal data necessary for functionality. Your financial data is encrypted and stored securely. We do not sell or share your personal information with third parties.';

  @override
  String get editName => 'Edit Name';

  @override
  String get enterDisplayName => 'Enter your display name';

  @override
  String get noDataToExport => 'No data available to export';

  @override
  String get lastSynced => 'Last Synced';

  @override
  String get syncNow => 'Sync Now';

  @override
  String get syncing => 'Syncing...';

  @override
  String get syncSuccess => 'Sync successful';

  @override
  String get syncFailed => 'Sync failed';

  @override
  String get never => 'Never';

  @override
  String get backup => 'Backup';

  @override
  String get restore => 'Restore';

  @override
  String get backupData => 'Backup Data';

  @override
  String get restoreData => 'Restore Data';

  @override
  String get backupCreated => 'Backup created successfully';

  @override
  String get backupFailed => 'Backup failed';

  @override
  String get restoreSuccess => 'Data restored successfully';

  @override
  String get restoreFailed => 'Restore failed';

  @override
  String get backupWarning =>
      'Restoring will overwrite all current data. This action cannot be undone.';

  @override
  String get lastBackup => 'Last Backup';

  @override
  String get noBackupFound => 'No backup file found';

  @override
  String get deleteAccountTitle => 'Delete Account';

  @override
  String get typeDelete => 'Type DELETE to confirm';

  @override
  String get understandWarning => 'I understand this action cannot be undone';

  @override
  String get accountDeleted => 'Account deleted successfully';

  @override
  String get offline => 'Offline';

  @override
  String get youAreOffline => 'You are offline - Some features may be limited';

  @override
  String get syncPending => 'Sync pending';

  @override
  String get connectionRestored => 'Connection restored - Syncing...';

  @override
  String get actionFailedOffline =>
      'Action failed - Please try again when online';

  @override
  String get homeGreetingMorning => 'Good morning';

  @override
  String get homeGreetingAfternoon => 'Good afternoon';

  @override
  String get homeGreetingEvening => 'Good evening';

  @override
  String get homeSyncedJustNow => 'Synced just now';

  @override
  String homeSyncedMinutes(int minutes) {
    return 'Synced $minutes min ago';
  }

  @override
  String homeSyncedHours(int hours) {
    return 'Synced ${hours}h ago';
  }

  @override
  String get homeNetWorth => 'Net Worth';

  @override
  String get homeThisMonth => 'This month';

  @override
  String get homePendingReviews => 'Pending Reviews';

  @override
  String get homeNoPending => 'No pending items';

  @override
  String get homeFireProgress => 'FIRE Progress';

  @override
  String get homeSetGoal => 'Set Goal';

  @override
  String get homeYearsToFire => 'Years to FIRE';

  @override
  String homeYearsToFireValue(String years) {
    return '$years years';
  }

  @override
  String get homeSavingsRate => 'Savings Rate';

  @override
  String get homeQuickActions => 'Quick Actions';

  @override
  String get homeAddExpense => 'Add Expense';

  @override
  String get homeBillImport => 'Bill Import';

  @override
  String get homeReviewPending => 'Review';

  @override
  String get homeShortcuts => 'Shortcuts';

  @override
  String get homeAssets => 'Assets';

  @override
  String get homeFireJourney => 'FIRE Journey';

  @override
  String get homeSettings => 'Settings';

  @override
  String get homeReviewCenter => 'Review';

  @override
  String get homeSavingsRateLabel => 'Savings Rate';

  @override
  String get homeSavingsRateExcellent => 'Excellent';

  @override
  String get homeSavingsRateGood => 'Good';

  @override
  String get homeSavingsRateFair => 'Fair';

  @override
  String get homeSavingsRateNeedsWork => 'Needs Work';

  @override
  String get homeSpendingInsights => 'Spending Insights';

  @override
  String get homeIncomeThisMonth => 'Income';

  @override
  String get homeExpenseThisMonth => 'Expense';

  @override
  String get homeNetSavings => 'Net Savings';

  @override
  String get homeOverspendingWarning => 'Spending exceeds income this month';

  @override
  String get homeRecommendations => 'Recommendations';

  @override
  String get homeRecSetFireGoal => 'Set your FIRE goal';

  @override
  String get homeRecSetFireGoalDesc =>
      'Track your journey to financial independence';

  @override
  String homeRecReviewPending(int count) {
    return 'Review $count pending transactions';
  }

  @override
  String get homeRecReviewPendingDesc =>
      'Keep your finances organized and up to date';

  @override
  String get homeRecIncreaseSavings => 'Increase your savings rate';

  @override
  String get homeRecIncreaseSavingsDesc => 'Aim for 20%+ to reach FIRE faster';

  @override
  String get homeRecReduceTimeline => 'Reduce your FIRE timeline';

  @override
  String get homeRecReduceTimelineDesc =>
      'Consider increasing monthly contributions';

  @override
  String get homeRecReduceSpending => 'Reduce overspending';

  @override
  String get homeRecReduceSpendingDesc =>
      'Your expenses exceed income this month';

  @override
  String get pleaseLogin => 'Please login first';

  @override
  String get expenseEntrySuccess => 'Expense saved successfully';

  @override
  String get nlpTitleCreated => 'AI has filled in for you';

  @override
  String get nlpTitleConfirm => 'AI parsed result, please confirm';

  @override
  String get nlpTitleAsk => 'Please complete info';

  @override
  String get nlpTitleDuplicate => 'Duplicate transaction detected';

  @override
  String get nlpBtnConfirmEntry => 'Confirm Entry';

  @override
  String get nlpBtnEditDetails => 'Edit Details';

  @override
  String get nlpBtnNotDuplicate => 'Not Duplicate';

  @override
  String get nlpBtnIsDuplicate => 'Is Duplicate';

  @override
  String get nlpBtnComplete => 'Complete';

  @override
  String get nlpConfidenceHigh => 'Very confident';

  @override
  String get nlpConfidenceMedium => 'Fairly sure';

  @override
  String get nlpConfidenceLow => 'Not sure';

  @override
  String get nlpFieldAmount => 'Amount';

  @override
  String get nlpFieldDate => 'Date';

  @override
  String get nlpFieldCategory => 'Category';

  @override
  String get nlpFieldPayeeExpense => 'Merchant';

  @override
  String get nlpFieldPayeeIncome => 'Source';

  @override
  String get nlpFieldPayeeDefault => 'Payee';

  @override
  String get nlpFieldNarration => 'Notes';

  @override
  String nlpMissingFieldWarning(String fieldName) {
    return '$fieldName not recognized, please fill in manually';
  }

  @override
  String get nlpPayeeNotMatched =>
      'Payee not matched, please confirm transaction';

  @override
  String nlpPayeeSuggested(String suggestedPayee) {
    return 'Suggested: $suggestedPayee';
  }

  @override
  String get nlpSelectAlternativePayee => 'Select alternative payee';

  @override
  String get nlpDuplicateNew => 'New Entry';

  @override
  String get nlpDuplicateExisting => 'Existing Entry';

  @override
  String get nlpDuplicateIgnored => 'Duplicate transaction ignored';

  @override
  String get nlpEditTransaction => 'Edit Transaction';

  @override
  String get nlpNoSessionError => 'Session expired, please try again';

  @override
  String get nlpConfidenceHintHigh => 'Very confident — please confirm or edit';

  @override
  String get nlpConfidenceHintMedium => 'Fairly sure — please review';

  @override
  String get nlpConfidenceHintLow => 'Not sure — please verify carefully';

  @override
  String get nlpFieldRequired => 'Required';

  @override
  String get nlpEnterAmount => 'Enter amount';

  @override
  String get nlpSelectCategory => 'Select category';

  @override
  String get categoryFood => 'Food';

  @override
  String get categoryCafe => 'Cafe';

  @override
  String get categoryTransport => 'Transport';

  @override
  String get categoryShopping => 'Shopping';

  @override
  String get categoryEntertainment => 'Entertainment';

  @override
  String get categorySalary => 'Salary';

  @override
  String get categoryBonus => 'Bonus';

  @override
  String get categoryGroceries => 'Groceries';

  @override
  String get categoryHealth => 'Health';

  @override
  String get categoryCar => 'Car';

  @override
  String get categoryClothing => 'Clothing';

  @override
  String get categoryDelivery => 'Delivery';

  @override
  String get categoryTravel => 'Travel';

  @override
  String get categoryUtilities => 'Utilities';

  @override
  String get categoryTransfer => 'Transfer';

  @override
  String get categoryIncomeSalary => 'Salary';

  @override
  String get categoryIncomeBonus => 'Bonus';

  @override
  String get categoryIncomeDividend => 'Dividend';

  @override
  String get categoryIncomeInterest => 'Interest';

  @override
  String get categoryIncomeReimbursement => 'Reimbursement';

  @override
  String get categoryInvestmentStock => 'Stock';

  @override
  String get categoryInvestmentFund => 'Fund';

  @override
  String get categoryInvestmentBond => 'Bond';

  @override
  String get categoryInvestmentEtf => 'ETF';

  @override
  String get categoryInvestmentFixed => 'Fixed Income';

  @override
  String get categoryInvestmentDerivatives => 'Derivatives';

  @override
  String get categoryBankingDeposit => 'Deposit';

  @override
  String get categoryBankingWithdraw => 'Withdrawal';

  @override
  String get categoryBankingSavings => 'Savings';

  @override
  String get categoryBankingFixedDeposit => 'Fixed Deposit';

  @override
  String get categoryBankingFixedMaturity => 'Fixed Deposit Maturity';

  @override
  String get categoryBankingForex => 'Foreign Exchange';

  @override
  String get categoryTransferCreditCard => 'Credit Card Payment';

  @override
  String get categoryTransferLoan => 'Loan Payment';

  @override
  String get categoryTransferRepay => 'Repayment';

  @override
  String get categoryTransferRedpacket => 'Red Packet';

  @override
  String get categoryExpenseCreditCard => 'Credit Card Expense';

  @override
  String get categoryExpenseHuabei => 'Huabei';

  @override
  String get categoryExpenseBaitiao => 'Baitiao';

  @override
  String get nlpNoParsedData => 'No parsed data';

  @override
  String get accountTypeChecking => 'Checking';

  @override
  String get accountTypeSavings => 'Savings';

  @override
  String get accountTypeInvestment => 'Investment';

  @override
  String get accountTypeCredit => 'Credit';

  @override
  String get noAccountsYet => 'No accounts yet';

  @override
  String get transactionRecordTitle => 'Transactions';

  @override
  String get filtered => 'Filtered';

  @override
  String get filterTransactions => 'Filter transactions';

  @override
  String get loadMore => 'Load more';

  @override
  String get filter => 'Filter';

  @override
  String get transactionStatusActive => 'Active';

  @override
  String get transactionStatusVoided => 'Voided';

  @override
  String transactionSummary(int count, int total) {
    return '$count / $total transactions';
  }

  @override
  String get actionSave => 'Save';

  @override
  String get actionDelete => 'Delete';

  @override
  String get actionClose => 'Close';

  @override
  String get txEditTitle => 'Edit';

  @override
  String get txAmount => 'Amount';

  @override
  String get txTypeTransfer => 'Transfer';

  @override
  String get txTypeExpense => 'Expense';

  @override
  String get txTypeIncome => 'Income';

  @override
  String get txConfidence => 'AI confidence';

  @override
  String get txDate => 'Date';

  @override
  String get txPayee => 'Payee';

  @override
  String get txCategory => 'Category';

  @override
  String get txAccount => 'Account';

  @override
  String get txLearnRule => 'Remember category';

  @override
  String get txLearnRuleHint =>
      'Future transactions from this payee will auto-categorize';

  @override
  String get txDescription => 'Description';

  @override
  String get txDescriptionPlaceholder => 'Transaction description';

  @override
  String get txTags => 'Tags';

  @override
  String get txAddTag => 'Add tag';

  @override
  String get txAddTagPlaceholder => 'Tag name';

  @override
  String get txTagSearchOrNew => 'Search or create tag';

  @override
  String get txTagCommonTags => 'Recent tags';

  @override
  String get txTagNoResults => 'No matching tags';

  @override
  String txTagCreateNew(String tag) {
    return 'Create new tag \"$tag\"';
  }

  @override
  String get txPostingsTitle => 'Postings';

  @override
  String get txAddPosting => 'Add posting';

  @override
  String get txSource => 'Source';

  @override
  String get txCreated => 'Created';

  @override
  String get txId => 'ID';

  @override
  String get balanceBalanced => 'Balanced';

  @override
  String get balanceUnbalanced => 'Unbalanced';

  @override
  String get balanceAutoFill => 'Auto-fill';

  @override
  String get balanceDelta => 'Delta';

  @override
  String get txPostingInterpolated => 'Auto';

  @override
  String get accountDetailTitle => 'Account Detail';

  @override
  String get investCostBasisHint =>
      'Cost basis records the acquisition cost of each holding; market value fluctuates with prices, and the difference is the unrealized P&L.';

  @override
  String get investInfoAccountType => 'Account Type';

  @override
  String get investInfoCustodian => 'Custodian';

  @override
  String get investInfoHoldingsCount => 'Holdings';

  @override
  String get investInfoStandard => 'Standard';

  @override
  String get investHoldingsTitle => 'Holdings · cost basis';

  @override
  String get holdingCost => 'Cost';

  @override
  String get holdingUnitPrice => 'Unit price';

  @override
  String get holdingMarketValue => 'Market value';

  @override
  String get holdingPnl => 'P&L';

  @override
  String get investTotalCost => 'Total Cost';

  @override
  String get investTotalMarketValue => 'Total Market Value';

  @override
  String get investTotalPnl => 'Total P&L';

  @override
  String get reconcileEntry => 'Balance Reconciliation';

  @override
  String get reconcileTitle => 'Balance Reconciliation';

  @override
  String get reconcileBookBalance => 'Book Balance';

  @override
  String get reconcileBookBalanceHint => 'System-calculated';

  @override
  String get reconcileFormTitle => 'Verify actual balance';

  @override
  String get reconcileDate => 'Reconciliation date';

  @override
  String get reconcileActual => 'Actual balance';

  @override
  String get reconcileActualPlaceholder => 'Enter actual balance';

  @override
  String get reconcileDifference => 'Difference';

  @override
  String get reconcileToleranceHint =>
      'Difference within ¥1.00 will only be recorded as a balance assertion, skipping the adjustment entry.';

  @override
  String get reconcileRecordAssertion => 'Record assertion';

  @override
  String get reconcileGenerateEntry => 'Generate adjustment entry';

  @override
  String get txCancel => 'Cancel';

  @override
  String get txDeleteConfirmMessage => 'Mark this transaction as voided?';
}
