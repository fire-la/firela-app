import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/services/analytics_events.dart';
import '../../../../core/services/auth_service.dart';
import '../../../../core/services/document_scanner_service.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/services/ocr/ocr_engine_factory.dart';
import '../../../../core/services/ocr/ocr_pipeline.dart';
import '../../../../core/network/auth_manager.dart';
import '../../../../core/network/api_client.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/utils/logger.dart';
import '../../../fire_journey/presentation/pages/fire_journey_page.dart';
import '../../../assets/presentation/pages/assets_tabs_page.dart';
import '../../../settings/presentation/pages/settings_page.dart';
import '../../../expense/presentation/widgets/expense_entry_bottom_sheet.dart';
import '../../../expense/presentation/widgets/nlp_result_bottom_sheet.dart';
import '../../../../core/services/receipt_text_parser.dart';
import '../../../expense/presentation/widgets/ocr_result_debug_sheet.dart';
import '../../../expense/presentation/widgets/categorization_preview_sheet.dart';
import '../../../../shared/signals/connectivity_signal.dart';
import '../../../review_center/presentation/signals/review_center_signal.dart';
import '../../../../shared/signals/asset_refresh_signal.dart';

/// Main page with bottom navigation
class MainPage extends HookWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final currentIndex = useState(0);

    // NLP 会话状态
    final nlpSessionId = useState<String>('');

    // SettingsPage 的 key，用于在切换 Tab 时刷新状态
    final settingsKey = useMemoized(() => GlobalKey<SettingsPageState>());

    // Start connectivity monitoring
    useEffect(() {
      ConnectivityService.instance.startMonitoring();
      return () {
        ConnectivityService.instance.stopMonitoring();
      };
    }, []);

    // Lazy-load tab pages: only build once visited, then keep alive.
    // This avoids building all 3 tabs + their data fetches on startup.
    final visitedTabs = useState<Set<int>>({0}); // Start with first tab loaded

    useEffect(() {
      // Mark current tab as visited whenever it changes
      visitedTabs.value = {...visitedTabs.value, currentIndex.value};
      return null;
    }, [currentIndex.value]);

    return Scaffold(
      body: Stack(
        children: [
          for (int i = 0; i < 3; i++)
            Offstage(
              offstage: currentIndex.value != i,
              child: visitedTabs.value.contains(i)
                  ? TickerMode(
                      enabled: currentIndex.value == i,
                      child: _buildPage(i, settingsKey),
                    )
                  : const SizedBox.shrink(),
            ),
        ],
      ),
      floatingActionButton: null,
      bottomNavigationBar: DesignBottomNav(
        currentIndex: currentIndex.value,
        onTap: (index) {
          currentIndex.value = index;
          if (index == 2) {
            settingsKey.currentState?.refresh();
          }
        },
        items: [
          BottomNavItem(
            icon: Icons.route,
            activeIcon: Icons.route,
            label: l10n.tabFireJourney,
          ),
          BottomNavItem(
            icon: Icons.bar_chart,
            activeIcon: Icons.bar_chart,
            label: l10n.tabAssets,
          ),
          BottomNavItem(
            icon: Icons.person,
            activeIcon: Icons.person,
            label: l10n.tabMine,
          ),
        ],
        onFabTap: () => _onFloatingAddTap(context, nlpSessionId),
      ),
    );
  }

  /// Build page by index (lazy)
  Widget _buildPage(int index, GlobalKey<SettingsPageState> settingsKey) {
    switch (index) {
      case 0:
        return const FireJourneyPage();
      case 1:
        return const AssetsTabsPage();
      case 2:
        return SettingsPage(key: settingsKey);
      default:
        return const SizedBox.shrink();
    }
  }

  /// 悬浮按钮点击 - 打开记账弹窗
  void _onFloatingAddTap(BuildContext context, ValueNotifier<String> nlpSessionId) {
    // Track expense button click
    AnalyticsService().capture(AnalyticsEvents.expenseButtonClicked);

    // 检查登录状态
    if (!AuthManager.instance.isLoggedIn) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('请先登录')),
      );
      Future.delayed(const Duration(milliseconds: 500), () {
        if (context.mounted) {
          AuthService.instance.showLoginOptions(context);
        }
      });
      return;
    }

    // 打开记账弹窗（键盘适配：isScrollControlled + AnimatedPadding）
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) {
        return AnimatedPadding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(ctx).viewInsets.bottom,
          ),
          duration: const Duration(milliseconds: 100),
          child: ExpenseEntryBottomSheet(
            onSubmit: (text) {
              _handleNlpSubmit(context, text, nlpSessionId);
            },
            onBillImport: () {
              _handleBillImport(context);
            },
            onPhotoRecognition: () {
              Navigator.of(ctx).pop(); // close the entry sheet first
              _showImageSourceAndProcessOcr(context, nlpSessionId);
            },
          ),
        );
      },
    );
  }

  /// 处理 NLP 记账提交
  /// 参考 IGN 项目 handleNlpSubmit 方法，处理不同置信度的返回结果
  Future<void> _handleNlpSubmit(
    BuildContext context,
    String text,
    ValueNotifier<String> nlpSessionId,
  ) async {
    logger.i('[MainPage] NLP submit: $text');

    // 显示 loading
    if (!context.mounted) return;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const Center(child: CircularProgressIndicator()),
    );

    try {
      final response = await IgnApiService.instance.processNlp(
        text,
        sessionId: nlpSessionId.value.isEmpty ? null : nlpSessionId.value,
      );

      // 更新 sessionId
      if (response['sessionId'] != null) {
        nlpSessionId.value = response['sessionId'];
      }

      if (!context.mounted) return;
      Navigator.pop(context); // 关闭 loading

      final action = response['action'] as String? ?? '';
      final confidence = (response['confidence'] as num?)?.toDouble() ?? 0.0;

      logger.i('[MainPage] NLP response: action=$action, confidence=$confidence');

      switch (action) {
        case 'created':
          // 高置信度 (≥75%)，直接成功
          _showNlpResult(context, 'success', response, nlpSessionId);
          break;

        case 'confirm':
        case 'confirm_payee':
          // 低置信度 (<75%) 或收款方未匹配，需要用户确认
          _showNlpResult(context, 'confirm', response, nlpSessionId,
            message: action == 'confirm_payee'
                ? (response['message'] ?? '收款方未匹配，请确认交易信息')
                : null);
          break;

        case 'confirm_duplicate':
          // 检测到可能重复的交易
          _showNlpResult(context, 'confirm', response, nlpSessionId,
            message: response['message'] ?? '检测到类似交易，请确认是否继续记录');
          break;

        case 'ask':
          // 缺少字段，需要补充
          _showNlpResult(context, 'ask', response, nlpSessionId,
            message: response['message'],
            waitingFor: response['waitingFor']);
          break;

        case 'cancel':
          // 用户取消
          nlpSessionId.value = '';
          break;

        default:
          // 未知响应，显示确认表单
          _showNlpResult(context, 'confirm', response, nlpSessionId,
            message: response['message']);
      }
    } catch (e) {
      logger.e('[MainPage] NLP 请求失败: $e');

      // 详细调试信息
      if (e is ApiException) {
        logger.e('[MainPage] 状态码: ${e.statusCode}, 消息: ${e.message}');
        if (e.data != null) {
          logger.e('[MainPage] 响应数据: ${e.data}');
        }
      }

      if (context.mounted) {
        Navigator.pop(context); // 关闭 loading

        String errorMsg = '分析失败，请重试';
        if (e is ApiException) {
          if (e.statusCode == 422) {
            // 422 通常是账户不存在或分类未配置
            final message = e.message;
            if (message.contains('not found in account standards')) {
              // 检查是否是 NLP 服务端错误（API 返回 similarAccounts 数组）
              final errorData = e.data as Map<String, dynamic>?;
              final similarAccounts = errorData?['similarAccounts'] as List<dynamic>?;
              final suggestedAccount = similarAccounts?.isNotEmpty == true
                  ? similarAccounts![0]['name'] as String?
                  : null;
              final operation = errorData?['operation'] as String?;

              if (suggestedAccount != null) {
                errorMsg = '分类未识别，已使用: $suggestedAccount';
              } else if (operation == 'createTransactionAfterPayeeConfirmation') {
                errorMsg = 'NLP服务异常：无法识别分类，请尝试更具体的描述（如"午餐餐饮花费88元"）';
              } else {
                errorMsg = '账户未配置：请先在 Beancount 账本中添加对应账户，或尝试更具体的描述';
              }
            } else {
              errorMsg = '分类未识别，请尝试更具体的描述方式';
            }
          } else if (e.statusCode == 400) {
            errorMsg = '输入信息有误';
          } else if (e.statusCode == 500) {
            errorMsg = '服务端错误: ${e.message}';
          } else {
            errorMsg = '请求失败 (${e.statusCode}): ${e.message}';
          }
        }

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMsg),
            duration: const Duration(seconds: 5),
          ),
        );
      }
    }
  }

  /// 显示 NLP 结果弹窗
  void _showNlpResult(
    BuildContext context,
    String mode,
    Map<String, dynamic> response,
    ValueNotifier<String> nlpSessionId, {
    String? message,
    String? waitingFor,
  }) {
    final parsedData = response['parsedData'] as Map<String, dynamic>?
        ?? response['transaction'] as Map<String, dynamic>?
        ?? response['duplicateData']?['sourceTransaction'] as Map<String, dynamic>?
        ?? {};

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(ctx).viewInsets.bottom,
        ),
        child: NlpResultBottomSheet(
          mode: mode,
          parsedData: Map<String, dynamic>.from(parsedData),
          message: message,
          waitingFor: waitingFor,
          intent: response['intent'] ?? 'expense',
          onConfirm: (data) async {
            if (mode == 'success') {
              // 成功模式，直接完成
              nlpSessionId.value = '';
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('记账成功')),
                );
              }
            } else if (mode == 'ask' && data['_userInput'] != null) {
              // ask 模式：发送用户补充的信息（带 sessionId 继续多轮对话）
              final userInput = data['_userInput'] as String;
              if (context.mounted) {
                await _handleNlpSubmit(context, userInput, nlpSessionId);
              }
            } else if (nlpSessionId.value.isNotEmpty) {
              // 有 sessionId，通过多轮对话确认（发送 '确认' + sessionId）
              if (context.mounted) {
                await _handleNlpSubmit(context, '确认', nlpSessionId);
              }
            } else {
              // 无 sessionId，直接调用 createTransaction 创建交易
              // 先关闭 NlpResultBottomSheet，避免遮住后续的 loading/success 反馈
              if (context.mounted) {
                Navigator.pop(context);
              }
              if (context.mounted) {
                await _handleDirectConfirm(context, Map<String, dynamic>.from(parsedData), nlpSessionId);
              }
            }
          },
          onCancel: () {
            // 清除会话
            if (nlpSessionId.value.isNotEmpty) {
              IgnApiService.instance.clearNlpSession(nlpSessionId.value).catchError((_) {});
            }
            nlpSessionId.value = '';
          },
        ),
      ),
    );
  }

  /// 直接确认创建交易（无 sessionId 时的兜底方案）
  Future<void> _handleDirectConfirm(
    BuildContext context,
    Map<String, dynamic> parsedData,
    ValueNotifier<String> nlpSessionId,
  ) async {
    logger.i('[MainPage] 无 sessionId，直接创建交易: $parsedData');

    // 转换为 Beancount 交易格式
    final transaction = _convertToBeancountFormat(parsedData);
    logger.i('[MainPage] 转换后的交易格式: $transaction');

    if (!context.mounted) return;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const Center(child: CircularProgressIndicator()),
    );

    try {
      await IgnApiService.instance.createTransaction(transaction);
      nlpSessionId.value = '';
      refreshAssetData();

      if (context.mounted) {
        Navigator.pop(context); // 关闭 loading
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('记账成功')),
        );
      }
    } catch (e) {
      logger.e('[MainPage] 直接创建交易失败: $e');

      // 处理422账户验证错误，尝试使用API建议的账户重试（支持多轮重试）
      if (e is ApiException && e.statusCode == 422 && e.data != null) {
        Map<String, dynamic>? errorData = e.data as Map<String, dynamic>?;
        var currentTransaction = transaction;
        var retryCount = 0;
        const maxRetries = 5; // 最多重试5次，避免无限循环

        while (retryCount < maxRetries) {
          // API 返回 similarAccounts 数组，取第一个作为建议账户
          final similarAccounts = errorData?['similarAccounts'] as List<dynamic>?;
          final suggestedAccount = similarAccounts?.isNotEmpty == true
              ? similarAccounts![0]['name'] as String?
              : null;
          final invalidAccount = errorData?['invalidAccount'] as String?;

          if (suggestedAccount == null || invalidAccount == null) {
            break;
          }

          retryCount++;
          logger.i('[MainPage] 账户验证失败，使用建议账户重试 ($retryCount): $invalidAccount -> $suggestedAccount');

          // 替换无效账户为建议账户
          currentTransaction = _replaceAccountInTransaction(
            currentTransaction,
            invalidAccount,
            suggestedAccount,
          );
          logger.i('[MainPage] 修正后的交易格式: $currentTransaction');

          try {
            await IgnApiService.instance.createTransaction(currentTransaction);
            nlpSessionId.value = '';
            refreshAssetData();

            if (context.mounted) {
              Navigator.pop(context); // 关闭 loading
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('记账成功')),
              );
            }
            return; // 成功，退出
          } catch (retryError) {
            if (retryError is ApiException && retryError.statusCode == 422 && retryError.data != null) {
              // 继续重试下一个无效账户
              final newData = retryError.data as Map<String, dynamic>?;
              if (newData?['suggestedAccount'] != null && newData?['invalidAccount'] != null) {
                // 更新 errorData 继续循环
                errorData = newData;
                logger.e('[MainPage] 重试仍然失败，继续尝试: ${newData?['invalidAccount']}');
                continue;
              }
            }
            logger.e('[MainPage] 重试失败: $retryError');
            break; // 非账户验证错误，退出重试
          }
        }
      }

      if (context.mounted) {
        Navigator.pop(context); // 关闭 loading

        String errorMsg = '记账失败，请重试';
        if (e is ApiException) {
          if (e.statusCode == 422) {
            final errorData = e.data as Map<String, dynamic>?;
            // API 返回 similarAccounts 数组，取第一个作为建议账户
            final similarAccounts = errorData?['similarAccounts'] as List<dynamic>?;
            final suggested = similarAccounts?.isNotEmpty == true
                ? similarAccounts![0]['name'] as String?
                : null;
            if (suggested != null) {
              errorMsg = '账户不存在，建议使用: $suggested';
            } else {
              errorMsg = '交易处理失败: ${e.message}';
            }
          } else if (e.statusCode == 400) {
            errorMsg = '交易格式错误: ${e.message}';
          } else {
            errorMsg = '请求失败 (${e.statusCode}): ${e.message}';
          }
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(errorMsg), duration: const Duration(seconds: 5)),
        );
      }
    }
  }

  /// 替换交易中的账户
  Map<String, dynamic> _replaceAccountInTransaction(
    Map<String, dynamic> transaction,
    String oldAccount,
    String newAccount,
  ) {
    final corrected = Map<String, dynamic>.from(transaction);
    final postings = List<Map<String, dynamic>>.from(corrected['postings'] as List);

    for (int i = 0; i < postings.length; i++) {
      if (postings[i]['account'] == oldAccount) {
        postings[i] = Map<String, dynamic>.from(postings[i]);
        postings[i]['account'] = newAccount;
      }
    }

    corrected['postings'] = postings;
    return corrected;
  }

  /// 将 NLP 解析的数据转换为 Beancount 交易格式
  /// 输入格式: {amount: 88, currency: CNY, date: 2026-02-25, narration: 餐饮, payee: 午餐费, category: food}
  /// 输出格式: {date: ..., narration: ..., payee: ..., postings: [{account: ..., units: "88.0", currency: "CNY"}, ...]}
  Map<String, dynamic> _convertToBeancountFormat(Map<String, dynamic> parsedData) {
    final amount = (parsedData['amount'] as num?)?.toDouble() ?? 0.0;
    final currency = parsedData['currency'] as String? ?? 'CNY';
    final date = parsedData['date'] as String?;
    final narration = parsedData['narration'] as String?;
    final payee = parsedData['payee'] as String?;
    final category = parsedData['category'] as String?;

    // 根据 category 映射到 Beancount 账户
    final expenseAccount = _mapCategoryToAccount(category);

    // 构建 postings 数组（units 为字符串格式，currency 为直接字段）
    final postings = <Map<String, dynamic>>[
      {
        'account': expenseAccount,
        'units': amount.toString(),
        'currency': currency,
      },
      // 负数表示资金流出（贷方）
      {
        'account': 'Assets:Unknown', // 默认资产账户，用户可能需要配置
        'units': (-amount).toString(),
        'currency': currency,
      },
    ];

    return {
      if (date != null) 'date': date,
      if (narration != null) 'narration': narration,
      if (payee != null) 'payee': payee,
      'postings': postings,
    };
  }

  /// 将 NLP 分类映射到 Beancount 账户
  /// 注意：所有账户名必须符合后端账户标准，否则会返回 422 错误
  /// 默认使用 Expenses:Uncategorized 作为兜底账户
  String _mapCategoryToAccount(String? category) {
    switch (category) {
      case 'food':
      case 'dining':
        return 'Expenses:Uncategorized';  // 后端账户标准中没有 Expenses:Food
      case 'transport':
      case 'transportation':
        return 'Expenses:Uncategorized';  // 后端账户标准中没有 Expenses:Transport
      case 'shopping':
        return 'Expenses:Uncategorized';  // 后端账户标准中没有 Expenses:Shopping
      case 'entertainment':
        return 'Expenses:Uncategorized';  // 后端账户标准中没有 Expenses:Entertainment
      case 'health':
      case 'medical':
        return 'Expenses:Uncategorized';  // 后端账户标准中没有 Expenses:Health
      case 'education':
        return 'Expenses:Uncategorized';  // 后端账户标准中没有 Expenses:Education
      case 'housing':
        return 'Expenses:Uncategorized';  // 后端账户标准中没有 Expenses:Housing
      case 'utilities':
        return 'Expenses:Uncategorized';  // 后端账户标准中没有 Expenses:Utilities
      default:
        return 'Expenses:Uncategorized';
    }
  }

  /// 处理账单导入 - 跳转到账单导入页面
  void _handleBillImport(BuildContext context) {
    context.push(RouteNames.billImport);
  }

  /// 选择图片来源并执行 OCR 识别
  void _showImageSourceAndProcessOcr(BuildContext context, ValueNotifier<String> nlpSessionId) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Container(
        decoration: BoxDecoration(
          color: Theme.of(ctx).colorScheme.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(TokenRadius.lg)),
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.only(top: TokenSpacing.sm),
                width: 40, height: 4,
                decoration: BoxDecoration(
                  color: TokenColors.textTertiary.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(TokenSpacing.xl),
                child: Text('选择图片来源', style: TokenTypography.body(fontWeight: FontWeight.w500)),
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('拍照识别'),
                onTap: () {
                  Navigator.pop(ctx);
                  _processOcrFromSource(context, ImageSource.camera, nlpSessionId);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('从相册选择'),
                onTap: () {
                  Navigator.pop(ctx);
                  _processOcrFromSource(context, ImageSource.gallery, nlpSessionId);
                },
              ),
              const SizedBox(height: TokenSpacing.sm),
            ],
          ),
        ),
      ),
    );
  }

  /// 执行 OCR 识别流程
  Future<void> _processOcrFromSource(
    BuildContext context,
    ImageSource source,
    ValueNotifier<String> nlpSessionId,
  ) async {
    String? imagePath;

    if (source == ImageSource.camera) {
      // Use document scanner for camera source (auto edge detection + perspective correction)
      imagePath = await DocumentScannerService.instance.scanDocument();
    } else {
      // Use image picker for gallery source
      final picker = ImagePicker();
      final image = await picker.pickImage(
        source: source,
        maxWidth: 1920,
        maxHeight: 1920,
        imageQuality: 85,
      );
      imagePath = image?.path;
    }

    if (imagePath == null) return; // User cancelled
    if (!context.mounted) return;

    // Show loading
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const Center(child: CircularProgressIndicator()),
    );

    try {
      // Use enhanced OCR pipeline
      final engine = OcrEngineFactory.create();
      final pipeline = OcrPipeline();
      final result = await pipeline.process(engine, imagePath);

      final receipt = result.receipt;

      if (!context.mounted) return;
      Navigator.pop(context); // Close loading

      // Show OCR result debug sheet
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        enableDrag: false,
        backgroundColor: Colors.transparent,
        builder: (ctx) => OcrResultDebugSheet(
          receipt: receipt,
          ocrSource: result.engineName,
          processingTime: result.processingTime,
          reconstructedLines: result.reconstructedLines,
          onConfirm: (OcrConfirmResult confirmResult) {
            _confirmOcrReceipt(context, receipt, confirmResult, result.engineName);
          },
        ),
      );
    } catch (e) {
      logger.e('[MainPage] OCR 识别失败: $e');
      if (context.mounted) {
        Navigator.pop(context); // Close loading
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('识别失败: $e'), duration: const Duration(seconds: 3)),
        );
      }
    }
  }

  /// 确认 OCR 小票：转为 CategorizationItem → 分类预览 → 上传
  Future<void> _confirmOcrReceipt(
    BuildContext context,
    dynamic receipt,
    OcrConfirmResult confirmResult,
    String engineName,
  ) async {
    final now = DateTime.now().millisecondsSinceEpoch;
    final items = <CategorizationItem>[];

    if (confirmResult.mode == TransactionMode.single) {
      // Single mode: one transaction for the whole receipt
      // Use line items total (user-edited) rather than regex-parsed total
      final merchantName = confirmResult.merchant.isNotEmpty
          ? confirmResult.merchant
          : (receipt.merchant.isNotEmpty ? receipt.merchant : '未知商家');
      items.add(CategorizationItem(
        id: 'ocr-$now',
        merchant: merchantName,
        amount: confirmResult.totalAmount > 0 ? confirmResult.totalAmount : receipt.totalAmount,
        date: confirmResult.selectedDate,
        suggestedCategory: '其他',
        confidence: receipt.confidence,
        selectedCategory: '其他',
      ));
    } else {
      // Multiple mode: one transaction per edited line item
      for (int i = 0; i < confirmResult.editedLineItems.length; i++) {
        final lineItem = confirmResult.editedLineItems[i];
        items.add(CategorizationItem(
          id: 'ocr-${now}_$i',
          merchant: lineItem.name.isNotEmpty ? lineItem.name : '商品',
          amount: lineItem.totalPrice,
          date: confirmResult.selectedDate,
          suggestedCategory: '其他',
          confidence: receipt.confidence,
          selectedCategory: '其他',
        ));
      }
    }

    final availableCategories = ['餐饮', '交通', '购物', '娱乐', '医疗', '教育', '居住', '通讯', '其他'];

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => CategorizationPreviewSheet(
        items: items,
        availableCategories: availableCategories,
        onConfirm: () async {
          Navigator.pop(ctx); // close preview sheet

          final transactions = _buildOcrTransactions(
            items, receipt, confirmResult, engineName,
          );

          if (!context.mounted) return;
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => const Center(child: CircularProgressIndicator()),
          );

          try {
            final result = await IgnApiService.instance.uploadParsedTransactions(transactions);
            if (!context.mounted) return;
            Navigator.pop(context); // close loading

            final imported = result['imported'] as int? ?? 0;
            if (imported > 0) {
              fetchPendingCount();
              refreshAssetData();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('记账成功')),
              );
            } else {
              final errors = result['errors'] as List? ?? [];
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(errors.isNotEmpty ? '导入失败: ${errors.first}' : '导入失败，请重试'),
                  duration: const Duration(seconds: 3),
                ),
              );
            }
          } catch (e) {
            logger.e('[MainPage] OCR upload failed: $e');
            if (context.mounted) {
              Navigator.pop(context); // close loading
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('提交失败: $e'), duration: const Duration(seconds: 3)),
              );
            }
          }
        },
        onCancel: () {
          Navigator.pop(ctx);
        },
      ),
    );
  }

  /// 构建 OCR Beancount 交易格式（支持 single/multiple 模式）
  List<Map<String, dynamic>> _buildOcrTransactions(
    List<CategorizationItem> items,
    dynamic receipt,
    OcrConfirmResult confirmResult,
    String engineName,
  ) {
    final lineItemsMeta = confirmResult.editedLineItems.map((i) => {
      'name': i.name,
      'quantity': i.quantity,
      'totalPrice': i.totalPrice,
    }).toList();

    return items.map((item) {
      return {
        'date': '${item.date.year}-${item.date.month.toString().padLeft(2, '0')}-${item.date.day.toString().padLeft(2, '0')}',
        'narration': item.merchant,
        'payee': item.merchant,
        'postings': [
          {
            'account': 'Expenses:Uncategorized',
            'units': item.amount.toStringAsFixed(2),
            'currency': 'CNY',
          },
          {
            'account': 'Assets:Unknown',
            'units': (-item.amount).toStringAsFixed(2),
            'currency': 'CNY',
          },
        ],
        'meta': {
          'source': 'ocr-receipt',
          'confidence': receipt.confidence,
          'ocrEngine': engineName,
          'mode': confirmResult.mode == TransactionMode.single ? 'single' : 'multiple',
          if (confirmResult.mode == TransactionMode.single && lineItemsMeta.isNotEmpty)
            'lineItems': lineItemsMeta,
        },
        'idempotencyKey': item.id,
        'autoCreateAccounts': true,
      };
    }).toList();
  }
}
