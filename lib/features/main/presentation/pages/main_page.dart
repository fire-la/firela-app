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
import '../../../assets/presentation/pages/assets_page.dart';
import '../../../expense/presentation/pages/expense_tab_page.dart';
import 'ai_chat_placeholder_page.dart';
import '../../../expense/presentation/widgets/expense_entry_bottom_sheet.dart';
import '../../../expense/presentation/widgets/nlp_result_bottom_sheet.dart';
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
    final currentIndex = useState(0);

    // NLP 会话状态
    final nlpSessionId = useState<String>('');

    // Start connectivity monitoring
    useEffect(() {
      ConnectivityService.instance.startMonitoring();
      return () {
        ConnectivityService.instance.stopMonitoring();
      };
    }, []);

    // Lazy-load tab pages: only build once visited, then keep alive.
    // This avoids building all 3 tabs + their data fetches on startup.
    final visitedTabs = useState<Set<int>>({0});

    // SafeArea wrapping
    final topPadding = MediaQuery.of(context).padding.top;

    useEffect(() {
      // Mark current tab as visited whenever it changes
      visitedTabs.value = {...visitedTabs.value, currentIndex.value};
      return null;
    }, [currentIndex.value]);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: topPadding),
        child: Stack(
          children: [
            for (int i = 0; i < 3; i++)
              Offstage(
                offstage: currentIndex.value != i,
                child: visitedTabs.value.contains(i)
                    ? TickerMode(
                        enabled: currentIndex.value == i,
                        child: _buildPage(i),
                      )
                    : const SizedBox.shrink(),
              ),
          ],
        ),
      ),
      floatingActionButton: null,
      bottomNavigationBar: DesignBottomNav(
        currentIndex: currentIndex.value,
        onTap: (index) {
          currentIndex.value = index;
        },
        items: [
          const BottomNavItem(
            icon: Icons.bar_chart_outlined,
            activeIcon: Icons.bar_chart,
            label: '资产',
          ),
          const BottomNavItem(
            icon: Icons.receipt_long_outlined,
            activeIcon: Icons.receipt_long,
            label: '收支',
          ),
          const BottomNavItem(
            icon: Icons.smart_toy_outlined,
            activeIcon: Icons.smart_toy,
            label: 'AI',
          ),
        ],
        onFabTap: () => _onFloatingAddTap(context, nlpSessionId),
      ),
    );
  }

  /// Build page by index (lazy)
  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return const AssetsPage();
      case 1:
        return const ExpenseTabPage();
      case 2:
        return const AiChatPlaceholderPage();
      default:
        return const SizedBox.shrink();
    }
  }

  /// 悬浮按钮点击 - 打开记账弹窗
  void _onFloatingAddTap(
      BuildContext context, ValueNotifier<String> nlpSessionId) {
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
    ValueNotifier<String> nlpSessionId, {
    Map<String, dynamic>? parsedData,
  }) async {
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
        parsedData: parsedData,
      );

      // 更新 sessionId
      if (response['sessionId'] != null) {
        nlpSessionId.value = response['sessionId'];
      }

      if (!context.mounted) return;
      Navigator.pop(context); // 关闭 loading

      final action = response['action'] as String? ?? '';
      final confidence = (response['confidence'] as num?)?.toDouble() ?? 0.0;

      logger
          .i('[MainPage] NLP response: action=$action, confidence=$confidence');

      switch (action) {
        case 'created':
        case 'confirm':
        case 'confirm_payee':
        case 'ask':
        case 'confirm_duplicate':
          _showNlpResult(context, action, response, nlpSessionId);
          break;

        case 'cancel':
          nlpSessionId.value = '';
          break;

        default:
          _showNlpResult(context, 'confirm', response, nlpSessionId);
      }
    } catch (e) {
      logger.e('[MainPage] NLP 请求失败: $e');

      if (e is ApiException) {
        logger.e('[MainPage] 状态码: ${e.statusCode}, 消息: ${e.message}');
        if (e.data != null) {
          logger.e('[MainPage] 响应数据: ${e.data}');
        }
      }

      if (context.mounted) {
        Navigator.of(context).maybePop(); // 安全关闭 loading

        String errorMsg = '分析失败，请重试';
        if (e is ApiException) {
          if (e.statusCode == 422) {
            // 422 通常是账户不存在或分类未配置
            final message = e.message;
            if (message.contains('not found in account standards')) {
              // 检查是否是 NLP 服务端错误（API 返回 similarAccounts 数组）
              final errorData = e.data as Map<String, dynamic>?;
              final similarAccounts =
                  errorData?['similarAccounts'] as List<dynamic>?;
              final suggestedAccount = similarAccounts?.isNotEmpty == true
                  ? similarAccounts![0]['name'] as String?
                  : null;
              final operation = errorData?['operation'] as String?;

              if (suggestedAccount != null) {
                errorMsg = '分类未识别，已使用: $suggestedAccount';
              } else if (operation ==
                  'createTransactionAfterPayeeConfirmation') {
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
            errorMsg = '服务暂时不可用，请稍后重试';
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
    String action,
    Map<String, dynamic> response,
    ValueNotifier<String> nlpSessionId,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(ctx).viewInsets.bottom,
        ),
        child: NlpResultBottomSheet(
          action: action,
          response: response,
          onConfirm: (data) async {
            Navigator.of(ctx).pop();
            await Future.delayed(const Duration(milliseconds: 50));

            if (data['_action'] == 'edit') {
              final transactionId = data['transactionId']?.toString();
              if (transactionId != null &&
                  transactionId.isNotEmpty &&
                  context.mounted) {
                context.push('/transactions/$transactionId');
              }
              return;
            }

            if (action == 'created') {
              nlpSessionId.value = '';
              refreshAssetData();
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(
                          AppLocalizations.of(context)!.expenseEntrySuccess)),
                );
              }
              return;
            }

            final message = _buildNlpMessage(data);
            // IGN-266: Pass parsedData from previous response for session recovery
            final lastParsedData = response['parsedData'] != null
                ? Map<String, dynamic>.from(response['parsedData'] as Map)
                : null;
            if (context.mounted) {
              await _handleNlpSubmit(context, message, nlpSessionId,
                  parsedData: lastParsedData);
            }
          },
          onCancel: () {
            Navigator.of(ctx).pop();
            if (nlpSessionId.value.isNotEmpty) {
              IgnApiService.instance
                  .clearNlpSession(nlpSessionId.value)
                  .catchError((_) {});
            }
            nlpSessionId.value = '';
          },
          onDuplicateConfirm: () {
            Navigator.of(ctx).pop();
            nlpSessionId.value = '';
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text(
                        AppLocalizations.of(context)!.nlpDuplicateIgnored)),
              );
              Navigator.pop(context);
            }
          },
          onDuplicateReject: () async {
            Navigator.of(ctx).pop();
            await Future.delayed(const Duration(milliseconds: 50));
            if (context.mounted) {
              await _handleNlpSubmit(context, '确认', nlpSessionId);
            }
          },
        ),
      ),
    );
  }

  /// Build NLP message from edited form data
  String _buildNlpMessage(Map<String, dynamic> editedData) {
    if (editedData['_userInput'] != null) {
      return editedData['_userInput'] as String;
    }
    if (editedData['_modified'] != true) return '确认';
    return [
      editedData['payee'] ?? '',
      editedData['amount'] != null ? '${editedData['amount']}元' : '',
      editedData['category'] ?? '',
    ].where((s) => (s as String).isNotEmpty).join(' ');
  }

  /// 处理账单导入 - 跳转到账单导入页面
  void _handleBillImport(BuildContext context) {
    context.push(RouteNames.billImport);
  }

  /// 选择图片来源并执行 OCR 识别
  void _showImageSourceAndProcessOcr(
      BuildContext context, ValueNotifier<String> nlpSessionId) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Container(
        decoration: BoxDecoration(
          color: Theme.of(ctx).colorScheme.surface,
          borderRadius:
              const BorderRadius.vertical(top: Radius.circular(TokenRadius.lg)),
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.only(top: TokenSpacing.sm),
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: TokenColors.textTertiary.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(TokenSpacing.xl),
                child: Text('选择图片来源',
                    style: TokenTypography.body(fontWeight: FontWeight.w500)),
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('拍照识别'),
                onTap: () {
                  Navigator.pop(ctx);
                  _processOcrFromSource(
                      context, ImageSource.camera, nlpSessionId);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('从相册选择'),
                onTap: () {
                  Navigator.pop(ctx);
                  _processOcrFromSource(
                      context, ImageSource.gallery, nlpSessionId);
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
            _confirmOcrReceipt(
                context, receipt, confirmResult, result.engineName);
          },
        ),
      );
    } catch (e) {
      logger.e('[MainPage] OCR 识别失败: $e');
      if (context.mounted) {
        Navigator.pop(context); // Close loading
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('识别失败: $e'), duration: const Duration(seconds: 3)),
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
        amount: confirmResult.totalAmount > 0
            ? confirmResult.totalAmount
            : receipt.totalAmount,
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

    final availableCategories = [
      '餐饮',
      '交通',
      '购物',
      '娱乐',
      '医疗',
      '教育',
      '居住',
      '通讯',
      '其他'
    ];

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
            items,
            receipt,
            confirmResult,
            engineName,
          );

          if (!context.mounted) return;
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => const Center(child: CircularProgressIndicator()),
          );

          try {
            final result = await IgnApiService.instance
                .uploadParsedTransactions(transactions);
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
                  content: Text(
                      errors.isNotEmpty ? '导入失败: ${errors.first}' : '导入失败，请重试'),
                  duration: const Duration(seconds: 3),
                ),
              );
            }
          } catch (e) {
            logger.e('[MainPage] OCR upload failed: $e');
            if (context.mounted) {
              Navigator.pop(context); // close loading
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text('提交失败: $e'),
                    duration: const Duration(seconds: 3)),
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
    final lineItemsMeta = confirmResult.editedLineItems
        .map((i) => {
              'name': i.name,
              'quantity': i.quantity,
              'totalPrice': i.totalPrice,
            })
        .toList();

    return items.map((item) {
      return {
        'date':
            '${item.date.year}-${item.date.month.toString().padLeft(2, '0')}-${item.date.day.toString().padLeft(2, '0')}',
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
          'mode': confirmResult.mode == TransactionMode.single
              ? 'single'
              : 'multiple',
          if (confirmResult.mode == TransactionMode.single &&
              lineItemsMeta.isNotEmpty)
            'lineItems': lineItemsMeta,
        },
        'idempotencyKey': item.id,
        'autoCreateAccounts': true,
      };
    }).toList();
  }
}
