// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '豆爪';

  @override
  String get welcomeMessage => '欢迎使用豆爪';

  @override
  String get appDescription => '您的个人财务伴侣，数据主权第一';

  @override
  String get toggleTheme => '切换主题';

  @override
  String get changeLanguage => '切换语言';

  @override
  String get currentLocale => '当前语言';

  @override
  String get currentTheme => '当前主题';

  @override
  String get featureDataSovereignty => '数据主权';

  @override
  String get featureDataSovereigntyDesc => '您的财务数据属于您。完全的所有权和控制权。';

  @override
  String get featureRealTimeSync => '实时同步';

  @override
  String get featureRealTimeSyncDesc => '与您的 beancount 后端无缝同步。';

  @override
  String get featureOfflineSupport => '离线支持';

  @override
  String get featureOfflineSupportDesc => '离线工作，连接恢复后自动同步。';

  @override
  String get accountsTitle => '账户';

  @override
  String get createAccount => '创建账户';

  @override
  String get settings => '设置';

  @override
  String get loading => '加载中...';

  @override
  String get error => '错误';

  @override
  String get retry => '重试';

  @override
  String get cancel => '取消';

  @override
  String get save => '保存';

  @override
  String get tabFireJourney => 'FIRE之路';

  @override
  String get tabAssets => '资产';

  @override
  String get tabMine => '我的';

  @override
  String fireJourneyDays(int days) {
    return '你已经坚持了$days天';
  }

  @override
  String get watchFirePlan => '查看Fire计划';

  @override
  String get progress => '进度';

  @override
  String get safety => '安全度';

  @override
  String get netAssets => '总净资产(元)';

  @override
  String get dailyIncome => '本日收支(元)';

  @override
  String get netProfit => '净资产';

  @override
  String freeMonths(int months) {
    return '$months个月备用金';
  }

  @override
  String get assetsLiabilities => '资产负债';

  @override
  String get incomeExpense => '收支记录';

  @override
  String get totalAssets => '总净资产';

  @override
  String get totalLiabilities => '总负债';

  @override
  String get assets => '资产';

  @override
  String get liabilities => '负债';

  @override
  String get details => '详情';

  @override
  String get assetDistribution => '资产分布';

  @override
  String get assetChange => '资产变化趋势';

  @override
  String get monthlyReturn => '本月收益(元)';

  @override
  String get viewAll => '查看全部';

  @override
  String monthlyIncrease(String month, String amount) {
    return '$month +$amount';
  }

  @override
  String get monthlyExpense => '本月实际支出(元)';

  @override
  String get income => '收入';

  @override
  String get budgetManagement => '预算管理';

  @override
  String get expenseTrend => '支出变化趋势';

  @override
  String used(int percent) {
    return '已用$percent%';
  }

  @override
  String remaining(String amount) {
    return '剩余¥$amount';
  }

  @override
  String get expenseDetails => '收支明细';

  @override
  String get expenseCategories => '支出分类';

  @override
  String get noTransactionRecords => '暂无交易记录';

  @override
  String get loadFailed => '加载失败';

  @override
  String get recent6Months => '近6月';

  @override
  String get recent1Month => '近1月';

  @override
  String get recent3Months => '近3月';

  @override
  String get recent1Year => '近1年';

  @override
  String expenseShare(int percent) {
    return '占比 $percent%';
  }

  @override
  String get total => '总计';

  @override
  String get food => '餐饮';

  @override
  String get transportation => '交通';

  @override
  String get entertainment => '人情';

  @override
  String get becomeMember => '成为IGN会员';

  @override
  String get memberBenefit => '解锁专属AI财务顾问，帮你加速Fire之路';

  @override
  String get activateNow => '立即开通';

  @override
  String get dataExport => '数据导出';

  @override
  String get privacyStatement => '隐私声明';

  @override
  String get aboutUs => '关于我们';

  @override
  String get helpCenter => '帮助中心';

  @override
  String get suggestions => '建议箱';

  @override
  String get logout => '退出登录';

  @override
  String get loginNow => '立即登录';

  @override
  String get statistics => '统计';

  @override
  String get balanced => '配置合理';

  @override
  String get aggressive => '进阶';

  @override
  String get conservative => '稳健';

  @override
  String get aiAccounting => 'AI记账';

  @override
  String get manualAccounting => '手动记账';

  @override
  String get enterExpenseDescription => '用一句话记录账目,如「晚饭20元」';

  @override
  String get photoRecognition => '拍照识别';

  @override
  String get billImport => '账单导入';

  @override
  String get analyzing => '分析中...';

  @override
  String get aiParseSuccess => 'AI 解析成功';

  @override
  String get expense => '支出';

  @override
  String get date => '日期';

  @override
  String get expenseType => '支出类型';

  @override
  String get expenseAmount => '支出金额';

  @override
  String get notes => '备注';

  @override
  String get confirm => '确认';

  @override
  String get pleaseSelect => '请选择';

  @override
  String get enterAmount => '¥ 输入金额';

  @override
  String get expenseTypeNotRecognized => '支出类型没识别出来哦,请手动选择';

  @override
  String get expenseAmountNotRecognized => '支出金额没识别出来哦,请手动选择';

  @override
  String get missingRequiredFields => '缺少必需字段';

  @override
  String get billImportTitle => '账单导入';

  @override
  String get importBill => '导入账单';

  @override
  String get parseBill => '解析账单';

  @override
  String get pleaseImportAlipayBill => '请导入账单文件';

  @override
  String get addFile => '+ 添加文件';

  @override
  String get supportedFormats => '支持Excel或CSV格式,不超过2MB';

  @override
  String get howToGetBill => '如何获取账单?';

  @override
  String get parsingBill => '努力解析账单中,请稍候...';

  @override
  String get reupload => '重新上传';

  @override
  String accountingComplete(int count) {
    return '$count笔记账完成';
  }

  @override
  String get reviewCenterTitle => '审核中心';

  @override
  String get reviewCenterAll => '全部';

  @override
  String get reviewCenterHigh => '高置信度';

  @override
  String get reviewCenterMedium => '需确认';

  @override
  String get reviewCenterLow => '建议核对';

  @override
  String get reviewCenterEmpty => '暂无待审核交易';

  @override
  String get reviewCenterKeep => '保留这笔';

  @override
  String get reviewCenterDelete => '删除';

  @override
  String get reviewCenterSave => '保存';

  @override
  String get reviewCenterConfirmDelete => '确认删除';

  @override
  String get reviewCenterConfirmDeleteMessage => '确定要删除这笔交易吗？此操作不可撤销。';

  @override
  String get reviewCenterConfirmSuccess => '已保留该交易';

  @override
  String get reviewCenterDeleteSuccess => '已删除该交易';

  @override
  String get reviewCenterSaveSuccess => '保存成功';

  @override
  String get reviewCenterLoading => '加载中...';

  @override
  String get reviewCenterError => '加载失败，请重试';

  @override
  String get reviewCenterDetailTitle => '交易详情';

  @override
  String get aiChatComingSoon => 'AI 对话（开发中）';

  @override
  String get reviewCenterConfidence => 'AI 识别置信度';

  @override
  String get reviewCenterAccount => '账户';

  @override
  String get reviewCenterMerchant => '商户';

  @override
  String get reviewCenterAmount => '金额';

  @override
  String get reviewCenterDateTime => '日期时间';

  @override
  String get reviewCenterNotes => '备注';

  @override
  String get reviewCenterExpense => '支出';

  @override
  String get reviewCenterIncome => '收入';

  @override
  String get reviewCenterInvalidId => '无效的交易ID';

  @override
  String get reviewCenterLoadFailed => '加载失败，请重试';

  @override
  String get reviewCenterDeleteFailed => '删除失败，请重试';

  @override
  String get reviewCenterSaveFailed => '保存失败，请重试';

  @override
  String get reviewCenterEnterAccount => '请输入账户名称';

  @override
  String get reviewCenterEnterMerchant => '请输入商户名称';

  @override
  String get reviewCenterEnterValidAmount => '请输入有效金额';

  @override
  String get region => '地域';

  @override
  String get selectRegion => '选择地域';

  @override
  String get switchRegion => '切换地域';

  @override
  String get switchRegionConfirm => '切换地域后，数据将重新加载。确定要切换吗？';

  @override
  String regionSwitched(String name) {
    return '已切换到$name地域';
  }

  @override
  String get scanReceipt => '扫描收据';

  @override
  String get takePhoto => '拍照';

  @override
  String get chooseFromGallery => '从相册选择';

  @override
  String get scanReceiptTitle => '扫描收据识别';

  @override
  String get processingOcr => '正在识别收据...';

  @override
  String get ocrResultTitle => 'OCR 识别结果';

  @override
  String get ocrResultTitleLowConfidence => 'OCR 识别结果（低置信度）';

  @override
  String get ocrParsedResult => '解析结果';

  @override
  String get ocrConfidence => '置信度';

  @override
  String get ocrLineItemCount => '明细数';

  @override
  String get ocrDate => '日期';

  @override
  String get ocrMerchant => '商家';

  @override
  String get ocrMerchantHint => '输入商家名';

  @override
  String get ocrAmount => '金额';

  @override
  String get ocrUnrecognized => '(未识别)';

  @override
  String get ocrEntryMode => '记账模式';

  @override
  String get ocrEntryModeWhole => '整单记账';

  @override
  String get ocrEntryModeItemized => '逐笔记账';

  @override
  String get ocrLineItems => '明细项目';

  @override
  String get ocrNoLineItems => '无明细项目';

  @override
  String get ocrAddItem => '添加项目';

  @override
  String get ocrProductName => '商品名';

  @override
  String get ocrErrorNameEmpty => '商品名为空，请补充';

  @override
  String get ocrErrorPriceMissing => '价格缺失，请补充';

  @override
  String get ocrErrorNameSuspect => '商品名疑似识别有误，请核对';

  @override
  String get ocrLineItemsTotal => '明细合计';

  @override
  String get categorizationPreviewTitle => '分类预览';

  @override
  String get items => '条目';

  @override
  String get needsReview => '需确认';

  @override
  String get confirmImport => '确认导入';

  @override
  String get editCategories => '编辑分类';

  @override
  String get avgConfidence => '平均置信度';

  @override
  String get allHighConfidence => '全部高置信度';

  @override
  String get someNeedReview => '部分需确认';

  @override
  String get importProgressIdle => '准备导入';

  @override
  String get importProgressUploading => '上传中';

  @override
  String get importProgressParsing => '解析中';

  @override
  String get importProgressCategorizing => '分类中';

  @override
  String get importProgressReviewing => '审核中';

  @override
  String get importProgressComplete => '完成';

  @override
  String get importProgressError => '错误';

  @override
  String get importErrorRetry => '请重试';

  @override
  String importErrorFileTooLarge(String size) {
    return '文件过大，请选择小于$size的文件';
  }

  @override
  String get importErrorUnsupportedFormat => '不支持的文件格式，请使用CSV或Excel文件';

  @override
  String get importErrorNetwork => '网络错误，请检查连接后重试';

  @override
  String get importErrorParsingFailed => '账单解析失败，请检查文件格式';

  @override
  String get importErrorDuplicateDetected => '检测到重复交易并已跳过';

  @override
  String get importErrorGeneric => '发生错误，请重试';

  @override
  String get importErrorViewDetails => '查看详情';

  @override
  String get importErrorRetryButton => '重试';

  @override
  String get batchImportSummaryTitle => '导入摘要';

  @override
  String get batchImportSuccessfullyImported => '成功导入';

  @override
  String get batchImportDuplicatesSkipped => '跳过重复';

  @override
  String get batchImportRequiresReview => '待确认';

  @override
  String get batchImportViewImported => '查看已导入';

  @override
  String get batchImportReviewLowConfidence => '查看低置信度';

  @override
  String get batchImportContinueImport => '继续导入';

  @override
  String get batchImportDone => '完成';

  @override
  String batchImportItemsImported(int count) {
    return '成功导入$count条记录';
  }

  @override
  String get liabilitiesByType => '负债分类';

  @override
  String get creditCards => '信用卡';

  @override
  String get loans => '贷款';

  @override
  String get mortgages => '房贷';

  @override
  String get otherLiabilities => '其他负债';

  @override
  String get liabilityDetails => '负债详情';

  @override
  String get period1Month => '1月';

  @override
  String get period3Months => '3月';

  @override
  String get period6Months => '6月';

  @override
  String get period1Year => '1年';

  @override
  String get fireGoal => 'FIRE目标';

  @override
  String get fireNumber => 'FIRE数字';

  @override
  String get savingsRate => '储蓄率';

  @override
  String get yearsToFire => '距离FIRE年数';

  @override
  String get milestoneAchieved => '里程碑达成！';

  @override
  String get celebrateProgress => '恭喜你在FIRE之路上达成这个里程碑！';

  @override
  String get refreshToSeeUpdates => '下拉刷新查看最新进度';

  @override
  String get fireProjectionTitle => 'FIRE 预测';

  @override
  String yearsToFireValue(String years) {
    return '距离 FIRE $years 年';
  }

  @override
  String projectionYearValue(String years) {
    return '第 $years 年';
  }

  @override
  String get baselineScenario => '基准';

  @override
  String get aggressiveScenario => '激进';

  @override
  String get scenarioModeling => '情景模拟';

  @override
  String get reset => '重置';

  @override
  String get monthlySavings => '月储蓄额';

  @override
  String adjustedSavingsValue(String amount) {
    return '调整后: $amount';
  }

  @override
  String get expectedReturn => '预期收益率';

  @override
  String get returnRateDescription => '年化投资收益率';

  @override
  String get retirementSpending => '退休开支';

  @override
  String get retirementSpendingDescription => '占当前开支的比例';

  @override
  String get scenarioImpactPositive => '调整这些设置可以查看如何加快你的 FIRE 进程。';

  @override
  String get scenarioImpactNeutral => '修改上方的滑块来查看变化如何影响你的 FIRE 时间线。';

  @override
  String get fireTypes => 'FIRE 类型';

  @override
  String get fullFire => '完全 FIRE';

  @override
  String get fullFireDescription => '传统的完全财务自由';

  @override
  String get coastFire => '海岸 FIRE';

  @override
  String get coastFireDescription => '早期存够本金，之后让其自行增值';

  @override
  String get baristaFire => '咖啡师 FIRE';

  @override
  String get baristaFireDescription => '兼职工作，部分开支由储蓄覆盖';

  @override
  String get leanFire => '极简 FIRE';

  @override
  String get leanFireDescription => '极简生活方式，降低开支';

  @override
  String get targetAmount => '目标';

  @override
  String get currentProgress => '进度';

  @override
  String get monthlyNeeded => '月储蓄';

  @override
  String get timeToReach => '时间';

  @override
  String yearsValue(String years) {
    return '$years 年';
  }

  @override
  String get alreadyAchieved => '已达成!';

  @override
  String get exportData => '导出数据';

  @override
  String get exportAsJson => '导出为 JSON';

  @override
  String get exportAsCsv => '导出为 CSV';

  @override
  String get exporting => '导出中...';

  @override
  String get exportSuccess => '导出成功';

  @override
  String get exportFailed => '导出失败';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get termsOfService => '服务条款';

  @override
  String get licenses => '开源许可';

  @override
  String get faq => '常见问题';

  @override
  String get contactSupport => '联系支持';

  @override
  String get sendFeedback => '发送反馈';

  @override
  String get accountSettings => '账户设置';

  @override
  String get userId => '用户 ID';

  @override
  String get displayName => '显示名称';

  @override
  String get customName => '自定义名称';

  @override
  String get securityToken => '安全令牌';

  @override
  String get savedToken => '已保存令牌';

  @override
  String get reLogin => '重新登录';

  @override
  String get deleteAccount => '删除账户';

  @override
  String get deleteAccountConfirm => '确定要删除账户吗？此操作无法撤销。';

  @override
  String get deleteAccountWarning => '您的所有数据将被永久删除。';

  @override
  String get accountCreated => '账户创建时间';

  @override
  String get preferences => '偏好设置';

  @override
  String get autoSync => '自动同步';

  @override
  String get autoSyncDesc => '自动与服务器同步数据';

  @override
  String get notifications => '通知';

  @override
  String get notificationsDesc => '启用推送通知';

  @override
  String get decimalPrecision => '小数精度';

  @override
  String get systemSettings => '系统设置';

  @override
  String get copiedToClipboard => '已复制到剪贴板';

  @override
  String get version => '版本';

  @override
  String get buildNumber => '构建号';

  @override
  String get aboutApp => '关于';

  @override
  String get faq1Question => '如何创建账户？';

  @override
  String get faq1Answer => '在个人页面点击「立即登录」按钮，选择「创建新账户」。系统会自动生成安全令牌。';

  @override
  String get faq2Question => '如何导出数据？';

  @override
  String get faq2Answer => '进入设置 > 数据导出，选择您喜欢的格式（JSON 或 CSV）。';

  @override
  String get faq3Question => '我的数据安全吗？';

  @override
  String get faq3Answer => '是的，您的数据经过加密并安全存储。您对数据拥有完全控制权。';

  @override
  String get faq4Question => '如何切换地域？';

  @override
  String get faq4Answer => '进入设置，找到地域区域，选择您偏好的地域。数据将重新加载。';

  @override
  String get privacyContent =>
      '您的隐私对我们很重要。本应用仅收集运行所需的最少数据。您的财务数据经过加密并安全存储。我们不会出售或与第三方共享您的个人信息。';

  @override
  String get editName => '编辑名称';

  @override
  String get enterDisplayName => '输入您的显示名称';

  @override
  String get noDataToExport => '没有可导出的数据';

  @override
  String get lastSynced => '上次同步';

  @override
  String get syncNow => '立即同步';

  @override
  String get syncing => '同步中...';

  @override
  String get syncSuccess => '同步成功';

  @override
  String get syncFailed => '同步失败';

  @override
  String get never => '从未';

  @override
  String get backup => '备份';

  @override
  String get restore => '恢复';

  @override
  String get backupData => '备份数据';

  @override
  String get restoreData => '恢复数据';

  @override
  String get backupCreated => '备份创建成功';

  @override
  String get backupFailed => '备份失败';

  @override
  String get restoreSuccess => '数据恢复成功';

  @override
  String get restoreFailed => '恢复失败';

  @override
  String get backupWarning => '恢复数据将覆盖当前所有数据，此操作无法撤销。';

  @override
  String get lastBackup => '上次备份';

  @override
  String get noBackupFound => '未找到备份文件';

  @override
  String get deleteAccountTitle => '删除账户';

  @override
  String get typeDelete => '输入 DELETE 确认';

  @override
  String get understandWarning => '我理解此操作无法撤销';

  @override
  String get accountDeleted => '账户已删除';

  @override
  String get offline => '离线';

  @override
  String get youAreOffline => '当前离线 - 部分功能可能受限';

  @override
  String get syncPending => '待同步';

  @override
  String get connectionRestored => '网络已恢复 - 正在同步...';

  @override
  String get actionFailedOffline => '操作失败 - 请在联网后重试';

  @override
  String get homeGreetingMorning => '早上好';

  @override
  String get homeGreetingAfternoon => '下午好';

  @override
  String get homeGreetingEvening => '晚上好';

  @override
  String get homeSyncedJustNow => '刚刚同步';

  @override
  String homeSyncedMinutes(int minutes) {
    return '$minutes分钟前同步';
  }

  @override
  String homeSyncedHours(int hours) {
    return '$hours小时前同步';
  }

  @override
  String get homeNetWorth => '净资产';

  @override
  String get homeThisMonth => '本月';

  @override
  String get homePendingReviews => '待确认交易';

  @override
  String get homeNoPending => '没有待处理项';

  @override
  String get homeFireProgress => 'FIRE进度';

  @override
  String get homeSetGoal => '设置目标';

  @override
  String get homeYearsToFire => '距离FIRE年数';

  @override
  String homeYearsToFireValue(String years) {
    return '$years年';
  }

  @override
  String get homeSavingsRate => '储蓄率';

  @override
  String get homeQuickActions => '快捷操作';

  @override
  String get homeAddExpense => '记一笔';

  @override
  String get homeBillImport => '账单导入';

  @override
  String get homeReviewPending => '待确认';

  @override
  String get homeShortcuts => '快捷入口';

  @override
  String get homeAssets => '资产负债';

  @override
  String get homeFireJourney => 'FIRE之路';

  @override
  String get homeSettings => '设置';

  @override
  String get homeReviewCenter => '待确认';

  @override
  String get homeSavingsRateLabel => '储蓄率';

  @override
  String get homeSavingsRateExcellent => '优秀';

  @override
  String get homeSavingsRateGood => '良好';

  @override
  String get homeSavingsRateFair => '一般';

  @override
  String get homeSavingsRateNeedsWork => '需改进';

  @override
  String get homeSpendingInsights => '收支分析';

  @override
  String get homeIncomeThisMonth => '收入';

  @override
  String get homeExpenseThisMonth => '支出';

  @override
  String get homeNetSavings => '净储蓄';

  @override
  String get homeOverspendingWarning => '本月支出超过收入';

  @override
  String get homeRecommendations => '建议';

  @override
  String get homeRecSetFireGoal => '设置 FIRE 目标';

  @override
  String get homeRecSetFireGoalDesc => '追踪你的财务自由之旅';

  @override
  String homeRecReviewPending(int count) {
    return '审核 $count 条待确认记录';
  }

  @override
  String get homeRecReviewPendingDesc => '保持财务记录有序更新';

  @override
  String get homeRecIncreaseSavings => '提高储蓄率';

  @override
  String get homeRecIncreaseSavingsDesc => '目标 20% 以上以更快实现 FIRE';

  @override
  String get homeRecReduceTimeline => '缩短 FIRE 时间';

  @override
  String get homeRecReduceTimelineDesc => '考虑增加每月储蓄金额';

  @override
  String get homeRecReduceSpending => '减少超支';

  @override
  String get homeRecReduceSpendingDesc => '本月支出超过收入';

  @override
  String get pleaseLogin => '请先登录';

  @override
  String get expenseEntrySuccess => '记账成功';

  @override
  String get nlpTitleCreated => 'AI 已为您填写';

  @override
  String get nlpTitleConfirm => 'AI 解析结果，请确认';

  @override
  String get nlpTitleAsk => '请补充信息';

  @override
  String get nlpTitleDuplicate => '检测到重复交易';

  @override
  String get nlpBtnConfirmEntry => '确认记账';

  @override
  String get nlpBtnEditDetails => '修改详情';

  @override
  String get nlpBtnNotDuplicate => '不是同一笔';

  @override
  String get nlpBtnIsDuplicate => '是同一笔';

  @override
  String get nlpBtnComplete => '完成';

  @override
  String get nlpConfidenceHigh => '很有把握';

  @override
  String get nlpConfidenceMedium => '基本确定';

  @override
  String get nlpConfidenceLow => '不太确定';

  @override
  String get nlpFieldAmount => '金额';

  @override
  String get nlpFieldDate => '日期';

  @override
  String get nlpFieldCategory => '分类';

  @override
  String get nlpFieldPayeeExpense => '商家';

  @override
  String get nlpFieldPayeeIncome => '来源';

  @override
  String get nlpFieldPayeeDefault => '对象';

  @override
  String get nlpFieldNarration => '备注';

  @override
  String nlpMissingFieldWarning(String fieldName) {
    return '$fieldName没识别出来哦，请手动填写';
  }

  @override
  String get nlpPayeeNotMatched => '收款方未匹配，请确认交易信息';

  @override
  String nlpPayeeSuggested(String suggestedPayee) {
    return '建议使用: $suggestedPayee';
  }

  @override
  String get nlpSelectAlternativePayee => '选择其他收款方';

  @override
  String get nlpDuplicateNew => '新记录';

  @override
  String get nlpDuplicateExisting => '已有记录';

  @override
  String get nlpDuplicateIgnored => '已忽略重复交易';

  @override
  String get nlpEditTransaction => '编辑交易';

  @override
  String get nlpNoSessionError => '会话已过期，请重新输入';

  @override
  String get nlpConfidenceHintHigh => '很有把握 — 请确认或修改以下信息';

  @override
  String get nlpConfidenceHintMedium => '基本确定 — 请检查以下信息';

  @override
  String get nlpConfidenceHintLow => '不太确定 — 请仔细核对';

  @override
  String get nlpFieldRequired => '必填';

  @override
  String get nlpEnterAmount => '请输入金额';

  @override
  String get nlpSelectCategory => '请选择分类';

  @override
  String get categoryFood => '餐饮';

  @override
  String get categoryCafe => '咖啡';

  @override
  String get categoryTransport => '交通';

  @override
  String get categoryShopping => '购物';

  @override
  String get categoryEntertainment => '娱乐';

  @override
  String get categorySalary => '工资';

  @override
  String get categoryBonus => '奖金';

  @override
  String get categoryGroceries => '生鲜日用';

  @override
  String get categoryHealth => '医疗健康';

  @override
  String get categoryCar => '汽车';

  @override
  String get categoryClothing => '服饰';

  @override
  String get categoryDelivery => '外卖配送';

  @override
  String get categoryTravel => '旅行';

  @override
  String get categoryUtilities => '水电缴费';

  @override
  String get categoryTransfer => '转账';

  @override
  String get categoryIncomeSalary => '工资';

  @override
  String get categoryIncomeBonus => '奖金';

  @override
  String get categoryIncomeDividend => '分红';

  @override
  String get categoryIncomeInterest => '利息';

  @override
  String get categoryIncomeReimbursement => '报销';

  @override
  String get categoryInvestmentStock => '股票';

  @override
  String get categoryInvestmentFund => '基金';

  @override
  String get categoryInvestmentBond => '债券';

  @override
  String get categoryInvestmentEtf => 'ETF';

  @override
  String get categoryInvestmentFixed => '定期理财';

  @override
  String get categoryInvestmentDerivatives => '衍生品';

  @override
  String get categoryBankingDeposit => '存款';

  @override
  String get categoryBankingWithdraw => '取款';

  @override
  String get categoryBankingSavings => '储蓄';

  @override
  String get categoryBankingFixedDeposit => '定期存款';

  @override
  String get categoryBankingFixedMaturity => '定存到期';

  @override
  String get categoryBankingForex => '外汇';

  @override
  String get categoryTransferCreditCard => '信用卡还款';

  @override
  String get categoryTransferLoan => '贷款还款';

  @override
  String get categoryTransferRepay => '还款';

  @override
  String get categoryTransferRedpacket => '红包';

  @override
  String get categoryExpenseCreditCard => '信用卡消费';

  @override
  String get categoryExpenseHuabei => '花呗';

  @override
  String get categoryExpenseBaitiao => '白条';

  @override
  String get nlpNoParsedData => '暂无解析数据';

  @override
  String get accountTypeChecking => '活期';

  @override
  String get accountTypeSavings => '储蓄';

  @override
  String get accountTypeInvestment => '投资';

  @override
  String get accountTypeCredit => '信用';

  @override
  String get noAccountsYet => '暂无账户';

  @override
  String get transactionRecordTitle => '交易记录';

  @override
  String get filtered => '已筛选';

  @override
  String get filterTransactions => '筛选交易';

  @override
  String get loadMore => '加载更多';

  @override
  String get filter => '筛选';

  @override
  String get transactionStatusActive => '有效';

  @override
  String get transactionStatusVoided => '已作废';

  @override
  String transactionSummary(int count, int total) {
    return '$count / $total 笔交易';
  }

  @override
  String get actionSave => '保存';

  @override
  String get actionDelete => '删除';

  @override
  String get actionClose => '关闭';

  @override
  String get txEditTitle => '编辑';

  @override
  String get txAmount => '金额';

  @override
  String get txTypeTransfer => '转账';

  @override
  String get txTypeExpense => '支出';

  @override
  String get txTypeIncome => '收入';

  @override
  String get txConfidence => 'AI 识别置信度';

  @override
  String get txDate => '日期';

  @override
  String get txPayee => '交易对方';

  @override
  String get txCategory => '分类';

  @override
  String get txAccount => '账户';

  @override
  String get txLearnRule => '记住此分类';

  @override
  String get txLearnRuleHint => '以后该交易对方的交易将自动归类';

  @override
  String get txDescription => '描述';

  @override
  String get txDescriptionPlaceholder => '输入交易描述';

  @override
  String get txTags => '标签';

  @override
  String get txAddTag => '添加标签';

  @override
  String get txAddTagPlaceholder => '标签名称';

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
  String get txPostingsTitle => '分录';

  @override
  String get txAddPosting => '添加分录';

  @override
  String get txSource => '来源';

  @override
  String get txCreated => '创建时间';

  @override
  String get txId => 'ID';

  @override
  String get balanceBalanced => '已平衡';

  @override
  String get balanceUnbalanced => '未平衡';

  @override
  String get balanceAutoFill => '自动补平';

  @override
  String get balanceDelta => '差额';

  @override
  String get txPostingInterpolated => '自动';

  @override
  String get accountDetailTitle => '账户详情';

  @override
  String get investCostBasisHint =>
      '成本基础（cost basis）记录每笔持仓的取得成本；市值随行情波动，差额即浮盈或浮亏。';

  @override
  String get investInfoAccountType => '账户类型';

  @override
  String get investInfoCustodian => '托管人';

  @override
  String get investInfoHoldingsCount => '持仓数';

  @override
  String get investInfoStandard => '账户标准';

  @override
  String get investHoldingsTitle => '持仓明细 · 成本基础';

  @override
  String get holdingCost => '成本';

  @override
  String get holdingUnitPrice => '单价';

  @override
  String get holdingMarketValue => '市值';

  @override
  String get holdingPnl => '浮盈';

  @override
  String get investTotalCost => '总成本';

  @override
  String get investTotalMarketValue => '总市值';

  @override
  String get investTotalPnl => '总浮盈';

  @override
  String get reconcileEntry => '余额对账';

  @override
  String get reconcileTitle => '余额对账';

  @override
  String get reconcileBookBalance => '账面余额';

  @override
  String get reconcileBookBalanceHint => '系统计算';

  @override
  String get reconcileFormTitle => '核对实际余额';

  @override
  String get reconcileDate => '对账日期';

  @override
  String get reconcileActual => '实际余额';

  @override
  String get reconcileActualPlaceholder => '输入实际余额';

  @override
  String get reconcileDifference => '差额';

  @override
  String get reconcileToleranceHint => '差额在 ¥1.00 以内将仅记录为余额断言，不生成调整分录。';

  @override
  String get reconcileRecordAssertion => '仅记录断言';

  @override
  String get reconcileGenerateEntry => '生成调整分录';

  @override
  String get txCancel => '取消';

  @override
  String get txDeleteConfirmMessage => '确认将此交易标记为已作废？';
}

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get appTitle => '豆爪';

  @override
  String get welcomeMessage => '欢迎使用豆爪';

  @override
  String get appDescription => '您的个人财务伴侣，数据主权第一';

  @override
  String get toggleTheme => '切换主题';

  @override
  String get changeLanguage => '切换语言';

  @override
  String get currentLocale => '当前语言';

  @override
  String get currentTheme => '当前主题';

  @override
  String get featureDataSovereignty => '数据主权';

  @override
  String get featureDataSovereigntyDesc => '您的财务数据属于您。完全的所有权和控制权。';

  @override
  String get featureRealTimeSync => '实时同步';

  @override
  String get featureRealTimeSyncDesc => '与您的 beancount 后端无缝同步。';

  @override
  String get featureOfflineSupport => '离线支持';

  @override
  String get featureOfflineSupportDesc => '离线工作，连接恢复后自动同步。';

  @override
  String get accountsTitle => '账户';

  @override
  String get createAccount => '创建账户';

  @override
  String get settings => '设置';

  @override
  String get loading => '加载中...';

  @override
  String get error => '错误';

  @override
  String get retry => '重试';

  @override
  String get cancel => '取消';

  @override
  String get save => '保存';

  @override
  String get tabFireJourney => 'FIRE之路';

  @override
  String get tabAssets => '资产';

  @override
  String get tabMine => '我的';

  @override
  String fireJourneyDays(int days) {
    return '你已经坚持了$days天';
  }

  @override
  String get watchFirePlan => '查看Fire计划';

  @override
  String get progress => '进度';

  @override
  String get safety => '安全度';

  @override
  String get netAssets => '总净资产(元)';

  @override
  String get dailyIncome => '本日收支(元)';

  @override
  String get netProfit => '净资产';

  @override
  String freeMonths(int months) {
    return '$months个月备用金';
  }

  @override
  String get assetsLiabilities => '资产负债';

  @override
  String get incomeExpense => '收支记录';

  @override
  String get totalAssets => '总净资产';

  @override
  String get totalLiabilities => '总负债';

  @override
  String get assets => '资产';

  @override
  String get liabilities => '负债';

  @override
  String get details => '详情';

  @override
  String get assetDistribution => '资产分布';

  @override
  String get assetChange => '资产变化趋势';

  @override
  String get monthlyReturn => '本月收益(元)';

  @override
  String get viewAll => '查看全部';

  @override
  String monthlyIncrease(String month, String amount) {
    return '$month +$amount';
  }

  @override
  String get monthlyExpense => '本月实际支出(元)';

  @override
  String get income => '收入';

  @override
  String get budgetManagement => '预算管理';

  @override
  String get expenseTrend => '支出变化趋势';

  @override
  String used(int percent) {
    return '已用$percent%';
  }

  @override
  String remaining(String amount) {
    return '剩余¥$amount';
  }

  @override
  String get expenseDetails => '收支明细';

  @override
  String get expenseCategories => '支出分类';

  @override
  String get noTransactionRecords => '暂无交易记录';

  @override
  String get loadFailed => '加载失败';

  @override
  String get recent6Months => '近6月';

  @override
  String get recent1Month => '近1月';

  @override
  String get recent3Months => '近3月';

  @override
  String get recent1Year => '近1年';

  @override
  String expenseShare(int percent) {
    return '占比 $percent%';
  }

  @override
  String get total => '总计';

  @override
  String get food => '餐饮';

  @override
  String get transportation => '交通';

  @override
  String get entertainment => '人情';

  @override
  String get becomeMember => '成为IGN会员';

  @override
  String get memberBenefit => '解锁专属AI财务顾问，帮你加速Fire之路';

  @override
  String get activateNow => '立即开通';

  @override
  String get dataExport => '数据导出';

  @override
  String get privacyStatement => '隐私声明';

  @override
  String get aboutUs => '关于我们';

  @override
  String get helpCenter => '帮助中心';

  @override
  String get suggestions => '建议箱';

  @override
  String get logout => '退出登录';

  @override
  String get loginNow => '立即登录';

  @override
  String get statistics => '统计';

  @override
  String get balanced => '配置合理';

  @override
  String get aggressive => '进阶';

  @override
  String get conservative => '稳健';

  @override
  String get aiAccounting => 'AI记账';

  @override
  String get manualAccounting => '手动记账';

  @override
  String get enterExpenseDescription => '用一句话记录账目,如「晚饭20元」';

  @override
  String get photoRecognition => '拍照识别';

  @override
  String get billImport => '账单导入';

  @override
  String get analyzing => '分析中...';

  @override
  String get aiParseSuccess => 'AI 解析成功';

  @override
  String get expense => '支出';

  @override
  String get date => '日期';

  @override
  String get expenseType => '支出类型';

  @override
  String get expenseAmount => '支出金额';

  @override
  String get notes => '备注';

  @override
  String get confirm => '确认';

  @override
  String get pleaseSelect => '请选择';

  @override
  String get enterAmount => '¥ 输入金额';

  @override
  String get expenseTypeNotRecognized => '支出类型没识别出来哦,请手动选择';

  @override
  String get expenseAmountNotRecognized => '支出金额没识别出来哦,请手动选择';

  @override
  String get missingRequiredFields => '缺少必需字段';

  @override
  String get billImportTitle => '账单导入';

  @override
  String get importBill => '导入账单';

  @override
  String get parseBill => '解析账单';

  @override
  String get pleaseImportAlipayBill => '请导入账单文件';

  @override
  String get addFile => '+ 添加文件';

  @override
  String get supportedFormats => '支持Excel或CSV格式,不超过2MB';

  @override
  String get howToGetBill => '如何获取账单?';

  @override
  String get parsingBill => '努力解析账单中,请稍候...';

  @override
  String get reupload => '重新上传';

  @override
  String accountingComplete(int count) {
    return '$count笔记账完成';
  }

  @override
  String get reviewCenterTitle => '审核中心';

  @override
  String get reviewCenterAll => '全部';

  @override
  String get reviewCenterHigh => '高置信度';

  @override
  String get reviewCenterMedium => '需确认';

  @override
  String get reviewCenterLow => '建议核对';

  @override
  String get reviewCenterEmpty => '暂无待审核交易';

  @override
  String get reviewCenterKeep => '保留这笔';

  @override
  String get reviewCenterDelete => '删除';

  @override
  String get reviewCenterSave => '保存';

  @override
  String get reviewCenterConfirmDelete => '确认删除';

  @override
  String get reviewCenterConfirmDeleteMessage => '确定要删除这笔交易吗？此操作不可撤销。';

  @override
  String get reviewCenterConfirmSuccess => '已保留该交易';

  @override
  String get reviewCenterDeleteSuccess => '已删除该交易';

  @override
  String get reviewCenterSaveSuccess => '保存成功';

  @override
  String get reviewCenterLoading => '加载中...';

  @override
  String get reviewCenterError => '加载失败，请重试';

  @override
  String get reviewCenterDetailTitle => '交易详情';

  @override
  String get aiChatComingSoon => 'AI 对话（开发中）';

  @override
  String get reviewCenterConfidence => 'AI 识别置信度';

  @override
  String get reviewCenterAccount => '账户';

  @override
  String get reviewCenterMerchant => '商户';

  @override
  String get reviewCenterAmount => '金额';

  @override
  String get reviewCenterDateTime => '日期时间';

  @override
  String get reviewCenterNotes => '备注';

  @override
  String get reviewCenterExpense => '支出';

  @override
  String get reviewCenterIncome => '收入';

  @override
  String get reviewCenterInvalidId => '无效的交易ID';

  @override
  String get reviewCenterLoadFailed => '加载失败，请重试';

  @override
  String get reviewCenterDeleteFailed => '删除失败，请重试';

  @override
  String get reviewCenterSaveFailed => '保存失败，请重试';

  @override
  String get reviewCenterEnterAccount => '请输入账户名称';

  @override
  String get reviewCenterEnterMerchant => '请输入商户名称';

  @override
  String get reviewCenterEnterValidAmount => '请输入有效金额';

  @override
  String get region => '地域';

  @override
  String get selectRegion => '选择地域';

  @override
  String get switchRegion => '切换地域';

  @override
  String get switchRegionConfirm => '切换地域后，数据将重新加载。确定要切换吗？';

  @override
  String regionSwitched(String name) {
    return '已切换到$name地域';
  }

  @override
  String get scanReceipt => '扫描收据';

  @override
  String get takePhoto => '拍照';

  @override
  String get chooseFromGallery => '从相册选择';

  @override
  String get scanReceiptTitle => '扫描收据识别';

  @override
  String get processingOcr => '正在识别收据...';

  @override
  String get ocrResultTitle => 'OCR 识别结果';

  @override
  String get ocrResultTitleLowConfidence => 'OCR 识别结果（低置信度）';

  @override
  String get ocrParsedResult => '解析结果';

  @override
  String get ocrConfidence => '置信度';

  @override
  String get ocrLineItemCount => '明细数';

  @override
  String get ocrDate => '日期';

  @override
  String get ocrMerchant => '商家';

  @override
  String get ocrMerchantHint => '输入商家名';

  @override
  String get ocrAmount => '金额';

  @override
  String get ocrUnrecognized => '(未识别)';

  @override
  String get ocrEntryMode => '记账模式';

  @override
  String get ocrEntryModeWhole => '整单记账';

  @override
  String get ocrEntryModeItemized => '逐笔记账';

  @override
  String get ocrLineItems => '明细项目';

  @override
  String get ocrNoLineItems => '无明细项目';

  @override
  String get ocrAddItem => '添加项目';

  @override
  String get ocrProductName => '商品名';

  @override
  String get ocrErrorNameEmpty => '商品名为空，请补充';

  @override
  String get ocrErrorPriceMissing => '价格缺失，请补充';

  @override
  String get ocrErrorNameSuspect => '商品名疑似识别有误，请核对';

  @override
  String get ocrLineItemsTotal => '明细合计';

  @override
  String get categorizationPreviewTitle => '分类预览';

  @override
  String get items => '条目';

  @override
  String get needsReview => '需确认';

  @override
  String get confirmImport => '确认导入';

  @override
  String get editCategories => '编辑分类';

  @override
  String get avgConfidence => '平均置信度';

  @override
  String get allHighConfidence => '全部高置信度';

  @override
  String get someNeedReview => '部分需确认';

  @override
  String get importProgressIdle => '准备导入';

  @override
  String get importProgressUploading => '上传中';

  @override
  String get importProgressParsing => '解析中';

  @override
  String get importProgressCategorizing => '分类中';

  @override
  String get importProgressReviewing => '审核中';

  @override
  String get importProgressComplete => '完成';

  @override
  String get importProgressError => '错误';

  @override
  String get importErrorRetry => '请重试';

  @override
  String importErrorFileTooLarge(String size) {
    return '文件过大，请选择小于$size的文件';
  }

  @override
  String get importErrorUnsupportedFormat => '不支持的文件格式，请使用CSV或Excel文件';

  @override
  String get importErrorNetwork => '网络错误，请检查连接后重试';

  @override
  String get importErrorParsingFailed => '账单解析失败，请检查文件格式';

  @override
  String get importErrorDuplicateDetected => '检测到重复交易并已跳过';

  @override
  String get importErrorGeneric => '发生错误，请重试';

  @override
  String get importErrorViewDetails => '查看详情';

  @override
  String get importErrorRetryButton => '重试';

  @override
  String get batchImportSummaryTitle => '导入摘要';

  @override
  String get batchImportSuccessfullyImported => '成功导入';

  @override
  String get batchImportDuplicatesSkipped => '跳过重复';

  @override
  String get batchImportRequiresReview => '待确认';

  @override
  String get batchImportViewImported => '查看已导入';

  @override
  String get batchImportReviewLowConfidence => '查看低置信度';

  @override
  String get batchImportContinueImport => '继续导入';

  @override
  String get batchImportDone => '完成';

  @override
  String batchImportItemsImported(int count) {
    return '成功导入$count条记录';
  }

  @override
  String get liabilitiesByType => '负债分类';

  @override
  String get creditCards => '信用卡';

  @override
  String get loans => '贷款';

  @override
  String get mortgages => '房贷';

  @override
  String get otherLiabilities => '其他负债';

  @override
  String get liabilityDetails => '负债详情';

  @override
  String get period1Month => '1月';

  @override
  String get period3Months => '3月';

  @override
  String get period6Months => '6月';

  @override
  String get period1Year => '1年';

  @override
  String get fireGoal => 'FIRE目标';

  @override
  String get fireNumber => 'FIRE数字';

  @override
  String get savingsRate => '储蓄率';

  @override
  String get yearsToFire => '距离FIRE年数';

  @override
  String get milestoneAchieved => '里程碑达成！';

  @override
  String get celebrateProgress => '恭喜你在FIRE之路上达成这个里程碑！';

  @override
  String get refreshToSeeUpdates => '下拉刷新查看最新进度';

  @override
  String get fireProjectionTitle => 'FIRE 预测';

  @override
  String yearsToFireValue(String years) {
    return '距离 FIRE $years 年';
  }

  @override
  String projectionYearValue(String years) {
    return '第 $years 年';
  }

  @override
  String get baselineScenario => '基准';

  @override
  String get aggressiveScenario => '激进';

  @override
  String get scenarioModeling => '情景模拟';

  @override
  String get reset => '重置';

  @override
  String get monthlySavings => '月储蓄额';

  @override
  String adjustedSavingsValue(String amount) {
    return '调整后: $amount';
  }

  @override
  String get expectedReturn => '预期收益率';

  @override
  String get returnRateDescription => '年化投资收益率';

  @override
  String get retirementSpending => '退休开支';

  @override
  String get retirementSpendingDescription => '占当前开支的比例';

  @override
  String get scenarioImpactPositive => '调整这些设置可以查看如何加快你的 FIRE 进程。';

  @override
  String get scenarioImpactNeutral => '修改上方的滑块来查看变化如何影响你的 FIRE 时间线。';

  @override
  String get fireTypes => 'FIRE 类型';

  @override
  String get fullFire => '完全 FIRE';

  @override
  String get fullFireDescription => '传统的完全财务自由';

  @override
  String get coastFire => '海岸 FIRE';

  @override
  String get coastFireDescription => '早期存够本金，之后让其自行增值';

  @override
  String get baristaFire => '咖啡师 FIRE';

  @override
  String get baristaFireDescription => '兼职工作，部分开支由储蓄覆盖';

  @override
  String get leanFire => '极简 FIRE';

  @override
  String get leanFireDescription => '极简生活方式，降低开支';

  @override
  String get targetAmount => '目标';

  @override
  String get currentProgress => '进度';

  @override
  String get monthlyNeeded => '月储蓄';

  @override
  String get timeToReach => '时间';

  @override
  String yearsValue(String years) {
    return '$years 年';
  }

  @override
  String get alreadyAchieved => '已达成!';

  @override
  String get exportData => '导出数据';

  @override
  String get exportAsJson => '导出为 JSON';

  @override
  String get exportAsCsv => '导出为 CSV';

  @override
  String get exporting => '导出中...';

  @override
  String get exportSuccess => '导出成功';

  @override
  String get exportFailed => '导出失败';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get termsOfService => '服务条款';

  @override
  String get licenses => '开源许可';

  @override
  String get faq => '常见问题';

  @override
  String get contactSupport => '联系支持';

  @override
  String get sendFeedback => '发送反馈';

  @override
  String get accountSettings => '账户设置';

  @override
  String get userId => '用户 ID';

  @override
  String get displayName => '显示名称';

  @override
  String get customName => '自定义名称';

  @override
  String get securityToken => '安全令牌';

  @override
  String get savedToken => '已保存令牌';

  @override
  String get reLogin => '重新登录';

  @override
  String get deleteAccount => '删除账户';

  @override
  String get deleteAccountConfirm => '确定要删除账户吗？此操作无法撤销。';

  @override
  String get deleteAccountWarning => '您的所有数据将被永久删除。';

  @override
  String get accountCreated => '账户创建时间';

  @override
  String get preferences => '偏好设置';

  @override
  String get autoSync => '自动同步';

  @override
  String get autoSyncDesc => '自动与服务器同步数据';

  @override
  String get notifications => '通知';

  @override
  String get notificationsDesc => '启用推送通知';

  @override
  String get decimalPrecision => '小数精度';

  @override
  String get systemSettings => '系统设置';

  @override
  String get copiedToClipboard => '已复制到剪贴板';

  @override
  String get version => '版本';

  @override
  String get buildNumber => '构建号';

  @override
  String get aboutApp => '关于';

  @override
  String get faq1Question => '如何创建账户？';

  @override
  String get faq1Answer => '在个人页面点击「立即登录」按钮，选择「创建新账户」。系统会自动生成安全令牌。';

  @override
  String get faq2Question => '如何导出数据？';

  @override
  String get faq2Answer => '进入设置 > 数据导出，选择您喜欢的格式（JSON 或 CSV）。';

  @override
  String get faq3Question => '我的数据安全吗？';

  @override
  String get faq3Answer => '是的，您的数据经过加密并安全存储。您对数据拥有完全控制权。';

  @override
  String get faq4Question => '如何切换地域？';

  @override
  String get faq4Answer => '进入设置，找到地域区域，选择您偏好的地域。数据将重新加载。';

  @override
  String get privacyContent =>
      '您的隐私对我们很重要。本应用仅收集运行所需的最少数据。您的财务数据经过加密并安全存储。我们不会出售或与第三方共享您的个人信息。';

  @override
  String get editName => '编辑名称';

  @override
  String get enterDisplayName => '输入您的显示名称';

  @override
  String get noDataToExport => '没有可导出的数据';

  @override
  String get lastSynced => '上次同步';

  @override
  String get syncNow => '立即同步';

  @override
  String get syncing => '同步中...';

  @override
  String get syncSuccess => '同步成功';

  @override
  String get syncFailed => '同步失败';

  @override
  String get never => '从未';

  @override
  String get backup => '备份';

  @override
  String get restore => '恢复';

  @override
  String get backupData => '备份数据';

  @override
  String get restoreData => '恢复数据';

  @override
  String get backupCreated => '备份创建成功';

  @override
  String get backupFailed => '备份失败';

  @override
  String get restoreSuccess => '数据恢复成功';

  @override
  String get restoreFailed => '恢复失败';

  @override
  String get backupWarning => '恢复数据将覆盖当前所有数据，此操作无法撤销。';

  @override
  String get lastBackup => '上次备份';

  @override
  String get noBackupFound => '未找到备份文件';

  @override
  String get deleteAccountTitle => '删除账户';

  @override
  String get typeDelete => '输入 DELETE 确认';

  @override
  String get understandWarning => '我理解此操作无法撤销';

  @override
  String get accountDeleted => '账户已删除';

  @override
  String get offline => '离线';

  @override
  String get youAreOffline => '当前离线 - 部分功能可能受限';

  @override
  String get syncPending => '待同步';

  @override
  String get connectionRestored => '网络已恢复 - 正在同步...';

  @override
  String get actionFailedOffline => '操作失败 - 请在联网后重试';

  @override
  String get homeGreetingMorning => '早上好';

  @override
  String get homeGreetingAfternoon => '下午好';

  @override
  String get homeGreetingEvening => '晚上好';

  @override
  String get homeSyncedJustNow => '刚刚同步';

  @override
  String homeSyncedMinutes(int minutes) {
    return '$minutes分钟前同步';
  }

  @override
  String homeSyncedHours(int hours) {
    return '$hours小时前同步';
  }

  @override
  String get homeNetWorth => '净资产';

  @override
  String get homeThisMonth => '本月';

  @override
  String get homePendingReviews => '待确认交易';

  @override
  String get homeNoPending => '没有待处理项';

  @override
  String get homeFireProgress => 'FIRE进度';

  @override
  String get homeSetGoal => '设置目标';

  @override
  String get homeYearsToFire => '距离FIRE年数';

  @override
  String homeYearsToFireValue(String years) {
    return '$years年';
  }

  @override
  String get homeSavingsRate => '储蓄率';

  @override
  String get homeQuickActions => '快捷操作';

  @override
  String get homeAddExpense => '记一笔';

  @override
  String get homeBillImport => '账单导入';

  @override
  String get homeReviewPending => '待确认';

  @override
  String get homeShortcuts => '快捷入口';

  @override
  String get homeAssets => '资产负债';

  @override
  String get homeFireJourney => 'FIRE之路';

  @override
  String get homeSettings => '设置';

  @override
  String get homeReviewCenter => '待确认';

  @override
  String get homeSavingsRateLabel => '储蓄率';

  @override
  String get homeSavingsRateExcellent => '优秀';

  @override
  String get homeSavingsRateGood => '良好';

  @override
  String get homeSavingsRateFair => '一般';

  @override
  String get homeSavingsRateNeedsWork => '需改进';

  @override
  String get homeSpendingInsights => '收支分析';

  @override
  String get homeIncomeThisMonth => '收入';

  @override
  String get homeExpenseThisMonth => '支出';

  @override
  String get homeNetSavings => '净储蓄';

  @override
  String get homeOverspendingWarning => '本月支出超过收入';

  @override
  String get homeRecommendations => '建议';

  @override
  String get homeRecSetFireGoal => '设置 FIRE 目标';

  @override
  String get homeRecSetFireGoalDesc => '追踪你的财务自由之旅';

  @override
  String homeRecReviewPending(int count) {
    return '审核 $count 条待确认记录';
  }

  @override
  String get homeRecReviewPendingDesc => '保持财务记录有序更新';

  @override
  String get homeRecIncreaseSavings => '提高储蓄率';

  @override
  String get homeRecIncreaseSavingsDesc => '目标 20% 以上以更快实现 FIRE';

  @override
  String get homeRecReduceTimeline => '缩短 FIRE 时间';

  @override
  String get homeRecReduceTimelineDesc => '考虑增加每月储蓄金额';

  @override
  String get homeRecReduceSpending => '减少超支';

  @override
  String get homeRecReduceSpendingDesc => '本月支出超过收入';

  @override
  String get pleaseLogin => '请先登录';

  @override
  String get expenseEntrySuccess => '记账成功';

  @override
  String get nlpTitleCreated => 'AI 已为您填写';

  @override
  String get nlpTitleConfirm => 'AI 解析结果，请确认';

  @override
  String get nlpTitleAsk => '请补充信息';

  @override
  String get nlpTitleDuplicate => '检测到重复交易';

  @override
  String get nlpBtnConfirmEntry => '确认记账';

  @override
  String get nlpBtnEditDetails => '修改详情';

  @override
  String get nlpBtnNotDuplicate => '不是同一笔';

  @override
  String get nlpBtnIsDuplicate => '是同一笔';

  @override
  String get nlpBtnComplete => '完成';

  @override
  String get nlpConfidenceHigh => '很有把握';

  @override
  String get nlpConfidenceMedium => '基本确定';

  @override
  String get nlpConfidenceLow => '不太确定';

  @override
  String get nlpFieldAmount => '金额';

  @override
  String get nlpFieldDate => '日期';

  @override
  String get nlpFieldCategory => '分类';

  @override
  String get nlpFieldPayeeExpense => '商家';

  @override
  String get nlpFieldPayeeIncome => '来源';

  @override
  String get nlpFieldPayeeDefault => '对象';

  @override
  String get nlpFieldNarration => '备注';

  @override
  String nlpMissingFieldWarning(String fieldName) {
    return '$fieldName没识别出来哦，请手动填写';
  }

  @override
  String get nlpPayeeNotMatched => '收款方未匹配，请确认交易信息';

  @override
  String nlpPayeeSuggested(String suggestedPayee) {
    return '建议使用: $suggestedPayee';
  }

  @override
  String get nlpSelectAlternativePayee => '选择其他收款方';

  @override
  String get nlpDuplicateNew => '新记录';

  @override
  String get nlpDuplicateExisting => '已有记录';

  @override
  String get nlpDuplicateIgnored => '已忽略重复交易';

  @override
  String get nlpEditTransaction => '编辑交易';

  @override
  String get nlpNoSessionError => '会话已过期，请重新输入';

  @override
  String get nlpConfidenceHintHigh => '很有把握 — 请确认或修改以下信息';

  @override
  String get nlpConfidenceHintMedium => '基本确定 — 请检查以下信息';

  @override
  String get nlpConfidenceHintLow => '不太确定 — 请仔细核对';

  @override
  String get nlpFieldRequired => '必填';

  @override
  String get nlpEnterAmount => '请输入金额';

  @override
  String get nlpSelectCategory => '请选择分类';

  @override
  String get categoryFood => '餐饮';

  @override
  String get categoryCafe => '咖啡';

  @override
  String get categoryTransport => '交通';

  @override
  String get categoryShopping => '购物';

  @override
  String get categoryEntertainment => '娱乐';

  @override
  String get categorySalary => '工资';

  @override
  String get categoryBonus => '奖金';

  @override
  String get categoryGroceries => '生鲜日用';

  @override
  String get categoryHealth => '医疗健康';

  @override
  String get categoryCar => '汽车';

  @override
  String get categoryClothing => '服饰';

  @override
  String get categoryDelivery => '外卖配送';

  @override
  String get categoryTravel => '旅行';

  @override
  String get categoryUtilities => '水电缴费';

  @override
  String get categoryTransfer => '转账';

  @override
  String get categoryIncomeSalary => '工资';

  @override
  String get categoryIncomeBonus => '奖金';

  @override
  String get categoryIncomeDividend => '分红';

  @override
  String get categoryIncomeInterest => '利息';

  @override
  String get categoryIncomeReimbursement => '报销';

  @override
  String get categoryInvestmentStock => '股票';

  @override
  String get categoryInvestmentFund => '基金';

  @override
  String get categoryInvestmentBond => '债券';

  @override
  String get categoryInvestmentEtf => 'ETF';

  @override
  String get categoryInvestmentFixed => '定期理财';

  @override
  String get categoryInvestmentDerivatives => '衍生品';

  @override
  String get categoryBankingDeposit => '存款';

  @override
  String get categoryBankingWithdraw => '取款';

  @override
  String get categoryBankingSavings => '储蓄';

  @override
  String get categoryBankingFixedDeposit => '定期存款';

  @override
  String get categoryBankingFixedMaturity => '定存到期';

  @override
  String get categoryBankingForex => '外汇';

  @override
  String get categoryTransferCreditCard => '信用卡还款';

  @override
  String get categoryTransferLoan => '贷款还款';

  @override
  String get categoryTransferRepay => '还款';

  @override
  String get categoryTransferRedpacket => '红包';

  @override
  String get categoryExpenseCreditCard => '信用卡消费';

  @override
  String get categoryExpenseHuabei => '花呗';

  @override
  String get categoryExpenseBaitiao => '白条';

  @override
  String get nlpNoParsedData => '暂无解析数据';

  @override
  String get accountTypeChecking => '活期';

  @override
  String get accountTypeSavings => '储蓄';

  @override
  String get accountTypeInvestment => '投资';

  @override
  String get accountTypeCredit => '信用';

  @override
  String get noAccountsYet => '暂无账户';

  @override
  String get transactionRecordTitle => '交易记录';

  @override
  String get filtered => '已筛选';

  @override
  String get filterTransactions => '筛选交易';

  @override
  String get loadMore => '加载更多';

  @override
  String get filter => '筛选';

  @override
  String get transactionStatusActive => '有效';

  @override
  String get transactionStatusVoided => '已作废';

  @override
  String transactionSummary(int count, int total) {
    return '$count / $total 笔交易';
  }

  @override
  String get actionSave => '保存';

  @override
  String get actionDelete => '删除';

  @override
  String get actionClose => '关闭';

  @override
  String get txEditTitle => '编辑';

  @override
  String get txAmount => '金额';

  @override
  String get txTypeTransfer => '转账';

  @override
  String get txTypeExpense => '支出';

  @override
  String get txTypeIncome => '收入';

  @override
  String get txConfidence => 'AI 识别置信度';

  @override
  String get txDate => '日期';

  @override
  String get txPayee => '交易对方';

  @override
  String get txCategory => '分类';

  @override
  String get txAccount => '账户';

  @override
  String get txLearnRule => '记住此分类';

  @override
  String get txLearnRuleHint => '以后该交易对方的交易将自动归类';

  @override
  String get txDescription => '描述';

  @override
  String get txDescriptionPlaceholder => '输入交易描述';

  @override
  String get txTags => '标签';

  @override
  String get txAddTag => '添加标签';

  @override
  String get txAddTagPlaceholder => '标签名称';

  @override
  String get txTagSearchOrNew => '搜索或新建标签';

  @override
  String get txTagCommonTags => '最近常用';

  @override
  String get txTagNoResults => '无匹配标签';

  @override
  String txTagCreateNew(String tag) {
    return '新建标签「$tag」';
  }

  @override
  String get txPostingsTitle => '分录';

  @override
  String get txAddPosting => '添加分录';

  @override
  String get txSource => '来源';

  @override
  String get txCreated => '创建时间';

  @override
  String get txId => 'ID';

  @override
  String get balanceBalanced => '已平衡';

  @override
  String get balanceUnbalanced => '未平衡';

  @override
  String get balanceAutoFill => '自动补平';

  @override
  String get balanceDelta => '差额';

  @override
  String get txPostingInterpolated => '自动';

  @override
  String get accountDetailTitle => '账户详情';

  @override
  String get investCostBasisHint =>
      '成本基础（cost basis）记录每笔持仓的取得成本；市值随行情波动，差额即浮盈或浮亏。';

  @override
  String get investInfoAccountType => '账户类型';

  @override
  String get investInfoCustodian => '托管人';

  @override
  String get investInfoHoldingsCount => '持仓数';

  @override
  String get investInfoStandard => '账户标准';

  @override
  String get investHoldingsTitle => '持仓明细 · 成本基础';

  @override
  String get holdingCost => '成本';

  @override
  String get holdingUnitPrice => '单价';

  @override
  String get holdingMarketValue => '市值';

  @override
  String get holdingPnl => '浮盈';

  @override
  String get investTotalCost => '总成本';

  @override
  String get investTotalMarketValue => '总市值';

  @override
  String get investTotalPnl => '总浮盈';

  @override
  String get reconcileEntry => '余额对账';

  @override
  String get reconcileTitle => '余额对账';

  @override
  String get reconcileBookBalance => '账面余额';

  @override
  String get reconcileBookBalanceHint => '系统计算';

  @override
  String get reconcileFormTitle => '核对实际余额';

  @override
  String get reconcileDate => '对账日期';

  @override
  String get reconcileActual => '实际余额';

  @override
  String get reconcileActualPlaceholder => '输入实际余额';

  @override
  String get reconcileDifference => '差额';

  @override
  String get reconcileToleranceHint => '差额在 ¥1.00 以内将仅记录为余额断言，不生成调整分录。';

  @override
  String get reconcileRecordAssertion => '仅记录断言';

  @override
  String get reconcileGenerateEntry => '生成调整分录';

  @override
  String get txCancel => '取消';

  @override
  String get txDeleteConfirmMessage => '确认将此交易标记为已作废？';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get appTitle => '豆爪';

  @override
  String get welcomeMessage => '歡迎使用豆爪';

  @override
  String get appDescription => '您的個人財務夥伴，數據主權第一';

  @override
  String get toggleTheme => '切換主題';

  @override
  String get changeLanguage => '切換語言';

  @override
  String get currentLocale => '目前語言';

  @override
  String get currentTheme => '目前主題';

  @override
  String get featureDataSovereignty => '數據主權';

  @override
  String get featureDataSovereigntyDesc => '您的財務數據屬於您。完全的所有權和控制權。';

  @override
  String get featureRealTimeSync => '即時同步';

  @override
  String get featureRealTimeSyncDesc => '與您的 beancount 後端無縫同步。';

  @override
  String get featureOfflineSupport => '離線支援';

  @override
  String get featureOfflineSupportDesc => '離線工作，連接恢復後自動同步。';

  @override
  String get accountsTitle => '帳戶';

  @override
  String get createAccount => '建立帳戶';

  @override
  String get settings => '設定';

  @override
  String get loading => '載入中...';

  @override
  String get error => '錯誤';

  @override
  String get retry => '重試';

  @override
  String get cancel => '取消';

  @override
  String get save => '儲存';

  @override
  String get tabFireJourney => 'FIRE之路';

  @override
  String get tabAssets => '資產';

  @override
  String get tabMine => '我的';

  @override
  String fireJourneyDays(int days) {
    return '你已經堅持了$days天';
  }

  @override
  String get watchFirePlan => '查看Fire計劃';

  @override
  String get progress => '進度';

  @override
  String get safety => '安全度';

  @override
  String get netAssets => '總淨資產(元)';

  @override
  String get dailyIncome => '本日收支(元)';

  @override
  String get netProfit => '淨資產';

  @override
  String freeMonths(int months) {
    return '$months個月備用金';
  }

  @override
  String get assetsLiabilities => '資產負債';

  @override
  String get incomeExpense => '收支記錄';

  @override
  String get totalAssets => '總淨資產';

  @override
  String get totalLiabilities => '總負債';

  @override
  String get assets => '資產';

  @override
  String get liabilities => '負債';

  @override
  String get details => '詳情';

  @override
  String get assetDistribution => '資產分布';

  @override
  String get assetChange => '資產變化趨勢';

  @override
  String get monthlyReturn => '本月收益(元)';

  @override
  String get viewAll => '查看全部';

  @override
  String monthlyIncrease(String month, String amount) {
    return '$month +$amount';
  }

  @override
  String get monthlyExpense => '本月實際支出(元)';

  @override
  String get income => '收入';

  @override
  String get budgetManagement => '預算管理';

  @override
  String get expenseTrend => '支出變化趨勢';

  @override
  String used(int percent) {
    return '已用$percent%';
  }

  @override
  String remaining(String amount) {
    return '剩餘¥$amount';
  }

  @override
  String get expenseDetails => '收支明細';

  @override
  String get expenseCategories => '支出分類';

  @override
  String get noTransactionRecords => '暫無交易記錄';

  @override
  String get loadFailed => '載入失敗';

  @override
  String get recent6Months => '近6月';

  @override
  String get recent1Month => '近1月';

  @override
  String get recent3Months => '近3月';

  @override
  String get recent1Year => '近1年';

  @override
  String expenseShare(int percent) {
    return '佔比 $percent%';
  }

  @override
  String get total => '總計';

  @override
  String get food => '餐飲';

  @override
  String get transportation => '交通';

  @override
  String get entertainment => '人情';

  @override
  String get becomeMember => '成為IGN會員';

  @override
  String get memberBenefit => '解鎖專屬AI財務顧問，幫你加速Fire之路';

  @override
  String get activateNow => '立即開通';

  @override
  String get dataExport => '數據導出';

  @override
  String get privacyStatement => '隱私聲明';

  @override
  String get aboutUs => '關於我們';

  @override
  String get helpCenter => '幫助中心';

  @override
  String get suggestions => '建議箱';

  @override
  String get logout => '退出登錄';

  @override
  String get loginNow => '立即登錄';

  @override
  String get statistics => '統計';

  @override
  String get balanced => '配置合理';

  @override
  String get aggressive => '進階';

  @override
  String get conservative => '穩健';

  @override
  String get aiAccounting => 'AI記賬';

  @override
  String get manualAccounting => '手動記賬';

  @override
  String get enterExpenseDescription => '用一句話記錄賬目,如「晚飯20元」';

  @override
  String get photoRecognition => '拍照識別';

  @override
  String get billImport => '賬單導入';

  @override
  String get analyzing => '分析中...';

  @override
  String get aiParseSuccess => 'AI 解析成功';

  @override
  String get expense => '支出';

  @override
  String get date => '日期';

  @override
  String get expenseType => '支出類型';

  @override
  String get expenseAmount => '支出金額';

  @override
  String get notes => '備註';

  @override
  String get confirm => '確認';

  @override
  String get pleaseSelect => '請選擇';

  @override
  String get enterAmount => '¥ 輸入金額';

  @override
  String get expenseTypeNotRecognized => '支出類型沒識別出來哦,請手動選擇';

  @override
  String get expenseAmountNotRecognized => '支出金額沒識別出來哦,請手動選擇';

  @override
  String get missingRequiredFields => '缺少必需字段';

  @override
  String get billImportTitle => '賬單導入';

  @override
  String get importBill => '導入賬單';

  @override
  String get parseBill => '解析賬單';

  @override
  String get pleaseImportAlipayBill => '請導入賬單文件';

  @override
  String get addFile => '+ 添加文件';

  @override
  String get supportedFormats => '支持Excel或CSV格式,不超過2MB';

  @override
  String get howToGetBill => '如何獲取賬單?';

  @override
  String get parsingBill => '努力解析賬單中,請稍候...';

  @override
  String get reupload => '重新上傳';

  @override
  String accountingComplete(int count) {
    return '$count筆記賬完成';
  }

  @override
  String get reviewCenterTitle => '審核中心';

  @override
  String get reviewCenterAll => '全部';

  @override
  String get reviewCenterHigh => '高置信度';

  @override
  String get reviewCenterMedium => '需確認';

  @override
  String get reviewCenterLow => '建議核對';

  @override
  String get reviewCenterEmpty => '暫無待審核交易';

  @override
  String get reviewCenterKeep => '保留這筆';

  @override
  String get reviewCenterDelete => '刪除';

  @override
  String get reviewCenterSave => '儲存';

  @override
  String get reviewCenterConfirmDelete => '確認刪除';

  @override
  String get reviewCenterConfirmDeleteMessage => '確定要刪除這筆交易嗎？此操作不可撤銷。';

  @override
  String get reviewCenterConfirmSuccess => '已保留該交易';

  @override
  String get reviewCenterDeleteSuccess => '已刪除該交易';

  @override
  String get reviewCenterSaveSuccess => '儲存成功';

  @override
  String get reviewCenterLoading => '載入中...';

  @override
  String get reviewCenterError => '載入失敗，請重試';

  @override
  String get reviewCenterDetailTitle => '交易詳情';

  @override
  String get aiChatComingSoon => 'AI 對話（開發中）';

  @override
  String get reviewCenterConfidence => 'AI 識別置信度';

  @override
  String get reviewCenterAccount => '帳戶';

  @override
  String get reviewCenterMerchant => '商戶';

  @override
  String get reviewCenterAmount => '金額';

  @override
  String get reviewCenterDateTime => '日期時間';

  @override
  String get reviewCenterNotes => '備註';

  @override
  String get reviewCenterExpense => '支出';

  @override
  String get reviewCenterIncome => '收入';

  @override
  String get reviewCenterInvalidId => '無效的交易ID';

  @override
  String get reviewCenterLoadFailed => '載入失敗，請重試';

  @override
  String get reviewCenterDeleteFailed => '刪除失敗，請重試';

  @override
  String get reviewCenterSaveFailed => '儲存失敗，請重試';

  @override
  String get reviewCenterEnterAccount => '請輸入帳戶名稱';

  @override
  String get reviewCenterEnterMerchant => '請輸入商戶名稱';

  @override
  String get reviewCenterEnterValidAmount => '請輸入有效金額';

  @override
  String get region => '地域';

  @override
  String get selectRegion => '選擇地域';

  @override
  String get switchRegion => '切換地域';

  @override
  String get switchRegionConfirm => '切換地域後，數據將重新載入。確定要切換嗎？';

  @override
  String regionSwitched(String name) {
    return '已切換到$name地域';
  }

  @override
  String get scanReceipt => '掃描收據';

  @override
  String get takePhoto => '拍照';

  @override
  String get chooseFromGallery => '從相簿選擇';

  @override
  String get scanReceiptTitle => '掃描收據識別';

  @override
  String get processingOcr => '正在識別收據...';

  @override
  String get ocrResultTitle => 'OCR 識別結果';

  @override
  String get ocrResultTitleLowConfidence => 'OCR 識別結果（低置信度）';

  @override
  String get ocrParsedResult => '解析結果';

  @override
  String get ocrConfidence => '置信度';

  @override
  String get ocrLineItemCount => '明細數';

  @override
  String get ocrDate => '日期';

  @override
  String get ocrMerchant => '商家';

  @override
  String get ocrMerchantHint => '輸入商家名';

  @override
  String get ocrAmount => '金額';

  @override
  String get ocrUnrecognized => '(未識別)';

  @override
  String get ocrEntryMode => '記帳模式';

  @override
  String get ocrEntryModeWhole => '整單記帳';

  @override
  String get ocrEntryModeItemized => '逐筆記帳';

  @override
  String get ocrLineItems => '明細項目';

  @override
  String get ocrNoLineItems => '無明細項目';

  @override
  String get ocrAddItem => '添加項目';

  @override
  String get ocrProductName => '商品名';

  @override
  String get ocrErrorNameEmpty => '商品名為空，請補充';

  @override
  String get ocrErrorPriceMissing => '價格缺失，請補充';

  @override
  String get ocrErrorNameSuspect => '商品名疑似識別有誤，請核對';

  @override
  String get ocrLineItemsTotal => '明細合計';

  @override
  String get categorizationPreviewTitle => '分類預覽';

  @override
  String get items => '條目';

  @override
  String get needsReview => '需確認';

  @override
  String get confirmImport => '確認導入';

  @override
  String get editCategories => '編輯分類';

  @override
  String get avgConfidence => '平均置信度';

  @override
  String get allHighConfidence => '全部高置信度';

  @override
  String get someNeedReview => '部分需確認';

  @override
  String get importProgressIdle => '準備導入';

  @override
  String get importProgressUploading => '上傳中';

  @override
  String get importProgressParsing => '解析中';

  @override
  String get importProgressCategorizing => '分類中';

  @override
  String get importProgressReviewing => '審核中';

  @override
  String get importProgressComplete => '完成';

  @override
  String get importProgressError => '錯誤';

  @override
  String get importErrorRetry => '請重試';

  @override
  String importErrorFileTooLarge(String size) {
    return '檔案過大，請選擇小於$size的檔案';
  }

  @override
  String get importErrorUnsupportedFormat => '不支援的檔案格式，請使用CSV或Excel檔案';

  @override
  String get importErrorNetwork => '網路錯誤，請檢查連線後重試';

  @override
  String get importErrorParsingFailed => '帳單解析失敗，請檢查檔案格式';

  @override
  String get importErrorDuplicateDetected => '檢測到重複交易並已跳過';

  @override
  String get importErrorGeneric => '發生錯誤，請重試';

  @override
  String get importErrorViewDetails => '查看詳情';

  @override
  String get importErrorRetryButton => '重試';

  @override
  String get batchImportSummaryTitle => '導入摘要';

  @override
  String get batchImportSuccessfullyImported => '成功導入';

  @override
  String get batchImportDuplicatesSkipped => '跳過重複';

  @override
  String get batchImportRequiresReview => '待確認';

  @override
  String get batchImportViewImported => '查看已導入';

  @override
  String get batchImportReviewLowConfidence => '查看低置信度';

  @override
  String get batchImportContinueImport => '繼續導入';

  @override
  String get batchImportDone => '完成';

  @override
  String batchImportItemsImported(int count) {
    return '成功導入$count條記錄';
  }

  @override
  String get liabilitiesByType => '負債分類';

  @override
  String get creditCards => '信用卡';

  @override
  String get loans => '貸款';

  @override
  String get mortgages => '房貸';

  @override
  String get otherLiabilities => '其他負債';

  @override
  String get liabilityDetails => '負債詳情';

  @override
  String get period1Month => '1月';

  @override
  String get period3Months => '3月';

  @override
  String get period6Months => '6月';

  @override
  String get period1Year => '1年';

  @override
  String get fireGoal => 'FIRE目標';

  @override
  String get fireNumber => 'FIRE數字';

  @override
  String get savingsRate => '儲蓄率';

  @override
  String get yearsToFire => '距離FIRE年數';

  @override
  String get milestoneAchieved => '里程碑達成！';

  @override
  String get celebrateProgress => '恭喜你在FIRE之路上達成這個里程碑！';

  @override
  String get refreshToSeeUpdates => '下拉刷新查看最新進度';

  @override
  String get fireProjectionTitle => 'FIRE 預測';

  @override
  String yearsToFireValue(String years) {
    return '距離 FIRE $years 年';
  }

  @override
  String projectionYearValue(String years) {
    return '第 $years 年';
  }

  @override
  String get baselineScenario => '基準';

  @override
  String get aggressiveScenario => '進取';

  @override
  String get scenarioModeling => '情景模擬';

  @override
  String get reset => '重置';

  @override
  String get monthlySavings => '月儲蓄額';

  @override
  String adjustedSavingsValue(String amount) {
    return '調整後: $amount';
  }

  @override
  String get expectedReturn => '預期收益率';

  @override
  String get returnRateDescription => '年化投資收益率';

  @override
  String get retirementSpending => '退休開支';

  @override
  String get retirementSpendingDescription => '佔當前開支的比例';

  @override
  String get scenarioImpactPositive => '調整這些設置可以查看如何加快你的 FIRE 進程。';

  @override
  String get scenarioImpactNeutral => '修改上方的滑塊來查看變化如何影響你的 FIRE 時間線。';

  @override
  String get fireTypes => 'FIRE 類型';

  @override
  String get fullFire => '完全 FIRE';

  @override
  String get fullFireDescription => '傳統的完全財務自由';

  @override
  String get coastFire => '海岸 FIRE';

  @override
  String get coastFireDescription => '早期存夠本金，之後讓其自行增值';

  @override
  String get baristaFire => '咖啡師 FIRE';

  @override
  String get baristaFireDescription => '兼職工作，部分開支由儲蓄覆蓋';

  @override
  String get leanFire => '極簡 FIRE';

  @override
  String get leanFireDescription => '極簡生活方式，降低開支';

  @override
  String get targetAmount => '目標';

  @override
  String get currentProgress => '進度';

  @override
  String get monthlyNeeded => '月儲蓄';

  @override
  String get timeToReach => '時間';

  @override
  String yearsValue(String years) {
    return '$years 年';
  }

  @override
  String get alreadyAchieved => '已達成!';

  @override
  String get exportData => '導出數據';

  @override
  String get exportAsJson => '導出為 JSON';

  @override
  String get exportAsCsv => '導出為 CSV';

  @override
  String get exporting => '導出中...';

  @override
  String get exportSuccess => '導出成功';

  @override
  String get exportFailed => '導出失敗';

  @override
  String get privacyPolicy => '隱私政策';

  @override
  String get termsOfService => '服務條款';

  @override
  String get licenses => '開源許可';

  @override
  String get faq => '常見問題';

  @override
  String get contactSupport => '聯繫支援';

  @override
  String get sendFeedback => '發送反饋';

  @override
  String get accountSettings => '帳戶設定';

  @override
  String get userId => '使用者 ID';

  @override
  String get displayName => '顯示名稱';

  @override
  String get customName => '自訂名稱';

  @override
  String get securityToken => '安全令牌';

  @override
  String get savedToken => '已儲存令牌';

  @override
  String get reLogin => '重新登入';

  @override
  String get deleteAccount => '刪除帳戶';

  @override
  String get deleteAccountConfirm => '確定要刪除帳戶嗎？此操作無法撤銷。';

  @override
  String get deleteAccountWarning => '您的所有數據將被永久刪除。';

  @override
  String get accountCreated => '帳戶建立時間';

  @override
  String get preferences => '偏好設定';

  @override
  String get autoSync => '自動同步';

  @override
  String get autoSyncDesc => '自動與伺服器同步數據';

  @override
  String get notifications => '通知';

  @override
  String get notificationsDesc => '啟用推播通知';

  @override
  String get decimalPrecision => '小數精度';

  @override
  String get systemSettings => '系統設定';

  @override
  String get copiedToClipboard => '已複製到剪貼簿';

  @override
  String get version => '版本';

  @override
  String get buildNumber => '建置號';

  @override
  String get aboutApp => '關於';

  @override
  String get faq1Question => '如何建立帳戶？';

  @override
  String get faq1Answer => '在個人頁面點擊「立即登入」按鈕，選擇「建立新帳戶」。系統會自動產生安全令牌。';

  @override
  String get faq2Question => '如何導出數據？';

  @override
  String get faq2Answer => '進入設定 > 數據導出，選擇您喜歡的格式（JSON 或 CSV）。';

  @override
  String get faq3Question => '我的數據安全嗎？';

  @override
  String get faq3Answer => '是的，您的數據經過加密並安全儲存。您對數據擁有完全控制權。';

  @override
  String get faq4Question => '如何切換地域？';

  @override
  String get faq4Answer => '進入設定，找到地域區塊，選擇您偏好的地域。數據將重新載入。';

  @override
  String get privacyContent =>
      '您的隱私對我們很重要。本應用僅收集運行所需的最少數據。您的財務數據經過加密並安全儲存。我們不會出售或與第三方共享您的個人資訊。';

  @override
  String get editName => '編輯名稱';

  @override
  String get enterDisplayName => '輸入您的顯示名稱';

  @override
  String get noDataToExport => '沒有可導出的數據';

  @override
  String get lastSynced => '上次同步';

  @override
  String get syncNow => '立即同步';

  @override
  String get syncing => '同步中...';

  @override
  String get syncSuccess => '同步成功';

  @override
  String get syncFailed => '同步失敗';

  @override
  String get never => '從未';

  @override
  String get backup => '備份';

  @override
  String get restore => '恢復';

  @override
  String get backupData => '備份數據';

  @override
  String get restoreData => '恢復數據';

  @override
  String get backupCreated => '備份創建成功';

  @override
  String get backupFailed => '備份失敗';

  @override
  String get restoreSuccess => '數據恢復成功';

  @override
  String get restoreFailed => '恢復失敗';

  @override
  String get backupWarning => '恢復數據將覆蓋當前所有數據，此操作無法撤銷。';

  @override
  String get lastBackup => '上次備份';

  @override
  String get noBackupFound => '未找到備份檔案';

  @override
  String get deleteAccountTitle => '刪除帳戶';

  @override
  String get typeDelete => '輸入 DELETE 確認';

  @override
  String get understandWarning => '我理解此操作無法撤銷';

  @override
  String get accountDeleted => '帳戶已刪除';

  @override
  String get offline => '離線';

  @override
  String get youAreOffline => '目前離線 - 部分功能可能受限';

  @override
  String get syncPending => '待同步';

  @override
  String get connectionRestored => '網路已恢復 - 正在同步...';

  @override
  String get actionFailedOffline => '操作失敗 - 請在聯網後重試';

  @override
  String get homeGreetingMorning => '早安';

  @override
  String get homeGreetingAfternoon => '午安';

  @override
  String get homeGreetingEvening => '晚安';

  @override
  String get homeSyncedJustNow => '剛剛同步';

  @override
  String homeSyncedMinutes(int minutes) {
    return '$minutes分鐘前同步';
  }

  @override
  String homeSyncedHours(int hours) {
    return '$hours小時前同步';
  }

  @override
  String get homeNetWorth => '淨資產';

  @override
  String get homeThisMonth => '本月';

  @override
  String get homePendingReviews => '待確認交易';

  @override
  String get homeNoPending => '沒有待處理項';

  @override
  String get homeFireProgress => 'FIRE進度';

  @override
  String get homeSetGoal => '設定目標';

  @override
  String get homeYearsToFire => '距離FIRE年數';

  @override
  String homeYearsToFireValue(String years) {
    return '$years年';
  }

  @override
  String get homeSavingsRate => '儲蓄率';

  @override
  String get homeQuickActions => '快捷操作';

  @override
  String get homeAddExpense => '記一筆';

  @override
  String get homeBillImport => '賬單導入';

  @override
  String get homeReviewPending => '待確認';

  @override
  String get homeShortcuts => '快捷入口';

  @override
  String get homeAssets => '資產負債';

  @override
  String get homeFireJourney => 'FIRE之路';

  @override
  String get homeSettings => '設定';

  @override
  String get homeReviewCenter => '待確認';

  @override
  String get homeSavingsRateLabel => '儲蓄率';

  @override
  String get homeSavingsRateExcellent => '優秀';

  @override
  String get homeSavingsRateGood => '良好';

  @override
  String get homeSavingsRateFair => '一般';

  @override
  String get homeSavingsRateNeedsWork => '需改進';

  @override
  String get homeSpendingInsights => '收支分析';

  @override
  String get homeIncomeThisMonth => '收入';

  @override
  String get homeExpenseThisMonth => '支出';

  @override
  String get homeNetSavings => '淨儲蓄';

  @override
  String get homeOverspendingWarning => '本月支出超過收入';

  @override
  String get homeRecommendations => '建議';

  @override
  String get homeRecSetFireGoal => '設定 FIRE 目標';

  @override
  String get homeRecSetFireGoalDesc => '追蹤你的財務自由之旅';

  @override
  String homeRecReviewPending(int count) {
    return '審核 $count 條待確認記錄';
  }

  @override
  String get homeRecReviewPendingDesc => '保持財務記錄有序更新';

  @override
  String get homeRecIncreaseSavings => '提高儲蓄率';

  @override
  String get homeRecIncreaseSavingsDesc => '目標 20% 以上以更快實現 FIRE';

  @override
  String get homeRecReduceTimeline => '縮短 FIRE 時間';

  @override
  String get homeRecReduceTimelineDesc => '考慮增加每月儲蓄金額';

  @override
  String get homeRecReduceSpending => '減少超支';

  @override
  String get homeRecReduceSpendingDesc => '本月支出超過收入';

  @override
  String get pleaseLogin => '請先登入';

  @override
  String get expenseEntrySuccess => '記帳成功';

  @override
  String get nlpTitleCreated => 'AI 已為您填寫';

  @override
  String get nlpTitleConfirm => 'AI 解析結果，請確認';

  @override
  String get nlpTitleAsk => '請補充資訊';

  @override
  String get nlpTitleDuplicate => '偵測到重複交易';

  @override
  String get nlpBtnConfirmEntry => '確認記帳';

  @override
  String get nlpBtnEditDetails => '修改詳情';

  @override
  String get nlpBtnNotDuplicate => '不是同一筆';

  @override
  String get nlpBtnIsDuplicate => '是同一筆';

  @override
  String get nlpBtnComplete => '完成';

  @override
  String get nlpConfidenceHigh => '很有把握';

  @override
  String get nlpConfidenceMedium => '基本確定';

  @override
  String get nlpConfidenceLow => '不太確定';

  @override
  String get nlpFieldAmount => '金額';

  @override
  String get nlpFieldDate => '日期';

  @override
  String get nlpFieldCategory => '分類';

  @override
  String get nlpFieldPayeeExpense => '商家';

  @override
  String get nlpFieldPayeeIncome => '來源';

  @override
  String get nlpFieldPayeeDefault => '對象';

  @override
  String get nlpFieldNarration => '備註';

  @override
  String nlpMissingFieldWarning(String fieldName) {
    return '$fieldName沒識別出來哦，請手動填寫';
  }

  @override
  String get nlpPayeeNotMatched => '收款方未匹配，請確認交易資訊';

  @override
  String nlpPayeeSuggested(String suggestedPayee) {
    return '建議使用: $suggestedPayee';
  }

  @override
  String get nlpSelectAlternativePayee => '選擇其他收款方';

  @override
  String get nlpDuplicateNew => '新記錄';

  @override
  String get nlpDuplicateExisting => '已有記錄';

  @override
  String get nlpDuplicateIgnored => '已忽略重複交易';

  @override
  String get nlpEditTransaction => '編輯交易';

  @override
  String get nlpNoSessionError => '工作階段已過期，請重新輸入';

  @override
  String get nlpConfidenceHintHigh => '很有把握 — 請確認或修改以下資訊';

  @override
  String get nlpConfidenceHintMedium => '基本確定 — 請檢查以下資訊';

  @override
  String get nlpConfidenceHintLow => '不太確定 — 請仔細核對';

  @override
  String get nlpFieldRequired => '必填';

  @override
  String get nlpEnterAmount => '請輸入金額';

  @override
  String get nlpSelectCategory => '請選擇分類';

  @override
  String get categoryFood => '餐飲';

  @override
  String get categoryCafe => '咖啡';

  @override
  String get categoryTransport => '交通';

  @override
  String get categoryShopping => '購物';

  @override
  String get categoryEntertainment => '娛樂';

  @override
  String get categorySalary => '薪資';

  @override
  String get categoryBonus => '獎金';

  @override
  String get categoryGroceries => '生鮮日用';

  @override
  String get categoryHealth => '醫療健康';

  @override
  String get categoryCar => '汽車';

  @override
  String get categoryClothing => '服飾';

  @override
  String get categoryDelivery => '外送配送';

  @override
  String get categoryTravel => '旅行';

  @override
  String get categoryUtilities => '水電繳費';

  @override
  String get categoryTransfer => '轉帳';

  @override
  String get categoryIncomeSalary => '薪資';

  @override
  String get categoryIncomeBonus => '獎金';

  @override
  String get categoryIncomeDividend => '分紅';

  @override
  String get categoryIncomeInterest => '利息';

  @override
  String get categoryIncomeReimbursement => '報銷';

  @override
  String get categoryInvestmentStock => '股票';

  @override
  String get categoryInvestmentFund => '基金';

  @override
  String get categoryInvestmentBond => '債券';

  @override
  String get categoryInvestmentEtf => 'ETF';

  @override
  String get categoryInvestmentFixed => '定期理財';

  @override
  String get categoryInvestmentDerivatives => '衍生品';

  @override
  String get categoryBankingDeposit => '存款';

  @override
  String get categoryBankingWithdraw => '提款';

  @override
  String get categoryBankingSavings => '儲蓄';

  @override
  String get categoryBankingFixedDeposit => '定期存款';

  @override
  String get categoryBankingFixedMaturity => '定存到期';

  @override
  String get categoryBankingForex => '外匯';

  @override
  String get categoryTransferCreditCard => '信用卡還款';

  @override
  String get categoryTransferLoan => '貸款還款';

  @override
  String get categoryTransferRepay => '還款';

  @override
  String get categoryTransferRedpacket => '紅包';

  @override
  String get categoryExpenseCreditCard => '信用卡消費';

  @override
  String get categoryExpenseHuabei => '花唄';

  @override
  String get categoryExpenseBaitiao => '白條';

  @override
  String get nlpNoParsedData => '暫無解析數據';

  @override
  String get accountTypeChecking => '活期';

  @override
  String get accountTypeSavings => '儲蓄';

  @override
  String get accountTypeInvestment => '投資';

  @override
  String get accountTypeCredit => '信用';

  @override
  String get noAccountsYet => '暫無帳戶';

  @override
  String get transactionRecordTitle => '交易紀錄';

  @override
  String get filtered => '已篩選';

  @override
  String get filterTransactions => '篩選交易';

  @override
  String get loadMore => '載入更多';

  @override
  String get filter => '篩選';

  @override
  String get transactionStatusActive => '有效';

  @override
  String get transactionStatusVoided => '已作廢';

  @override
  String transactionSummary(int count, int total) {
    return '$count / $total 筆交易';
  }

  @override
  String get actionSave => '儲存';

  @override
  String get actionDelete => '刪除';

  @override
  String get actionClose => '關閉';

  @override
  String get txEditTitle => '編輯';

  @override
  String get txAmount => '金額';

  @override
  String get txTypeTransfer => '轉帳';

  @override
  String get txTypeExpense => '支出';

  @override
  String get txTypeIncome => '收入';

  @override
  String get txConfidence => 'AI 識別置信度';

  @override
  String get txDate => '日期';

  @override
  String get txPayee => '交易對方';

  @override
  String get txCategory => '分類';

  @override
  String get txAccount => '帳戶';

  @override
  String get txLearnRule => '記住此分類';

  @override
  String get txLearnRuleHint => '以後該交易對方的交易將自動歸類';

  @override
  String get txDescription => '描述';

  @override
  String get txDescriptionPlaceholder => '輸入交易描述';

  @override
  String get txTags => '標籤';

  @override
  String get txAddTag => '新增標籤';

  @override
  String get txAddTagPlaceholder => '標籤名稱';

  @override
  String get txPostingsTitle => '分錄';

  @override
  String get txAddPosting => '新增分錄';

  @override
  String get txSource => '來源';

  @override
  String get txCreated => '建立時間';

  @override
  String get txId => 'ID';

  @override
  String get balanceBalanced => '已平衡';

  @override
  String get balanceUnbalanced => '未平衡';

  @override
  String get balanceAutoFill => '自動補平';

  @override
  String get balanceDelta => '差額';

  @override
  String get txPostingInterpolated => '自動';

  @override
  String get accountDetailTitle => '帳戶詳情';

  @override
  String get investCostBasisHint =>
      '成本基礎（cost basis）記錄每筆持倉的取得成本；市值隨行情波動，差額即浮盈或浮虧。';

  @override
  String get investInfoAccountType => '帳戶類型';

  @override
  String get investInfoCustodian => '託管人';

  @override
  String get investInfoHoldingsCount => '持倉數';

  @override
  String get investInfoStandard => '帳戶標準';

  @override
  String get investHoldingsTitle => '持倉明細 · 成本基礎';

  @override
  String get holdingCost => '成本';

  @override
  String get holdingUnitPrice => '單價';

  @override
  String get holdingMarketValue => '市值';

  @override
  String get holdingPnl => '浮盈';

  @override
  String get investTotalCost => '總成本';

  @override
  String get investTotalMarketValue => '總市值';

  @override
  String get investTotalPnl => '總浮盈';

  @override
  String get reconcileEntry => '餘額對帳';

  @override
  String get reconcileTitle => '餘額對帳';

  @override
  String get reconcileBookBalance => '帳面餘額';

  @override
  String get reconcileBookBalanceHint => '系統計算';

  @override
  String get reconcileFormTitle => '核對實際餘額';

  @override
  String get reconcileDate => '對帳日期';

  @override
  String get reconcileActual => '實際餘額';

  @override
  String get reconcileActualPlaceholder => '輸入實際餘額';

  @override
  String get reconcileDifference => '差額';

  @override
  String get reconcileToleranceHint => '差額在 ¥1.00 以內將僅記錄為餘額斷言，不生成調整分錄。';

  @override
  String get reconcileRecordAssertion => '僅記錄斷言';

  @override
  String get reconcileGenerateEntry => '生成調整分錄';

  @override
  String get txCancel => '取消';

  @override
  String get txDeleteConfirmMessage => '確認將此交易標記為已作廢？';
}
