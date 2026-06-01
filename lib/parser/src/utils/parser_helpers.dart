// Runtime helpers for ts2dart-generated parsers.
// Provides type guards and categorization functions not available in Dart.

// === Alipay ===

const Set<String> validAlipayDirections = {'收入', '支出', '其他'};

bool isValidAlipayDirection(String value) =>
    validAlipayDirections.contains(value);

// === WeChat ===

const Set<String> validWechatFlowTypes = {'收入', '支出', '不计收支', '/'};

bool isValidWechatFlowType(String value) =>
    validWechatFlowTypes.contains(value);

enum WechatStatusCategory { success, closed, refund, other }

WechatStatusCategory categorizeWechatStatus(String status) {
  if (status.contains('成功') || status.contains('已到账')) {
    return WechatStatusCategory.success;
  }
  if (status.contains('关闭')) {
    return WechatStatusCategory.closed;
  }
  if (status.contains('退款')) {
    return WechatStatusCategory.refund;
  }
  return WechatStatusCategory.other;
}
