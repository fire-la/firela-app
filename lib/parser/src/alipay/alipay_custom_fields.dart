/// Alipay-specific transaction fields.
///
/// Stores metadata extracted from Alipay Web CSV exports.
library;

/// Alipay-specific raw transaction fields.
class AlipayCustomFields {
  /// Transaction status: 交易成功 | 交易关闭 | 退款
  final String status;

  /// Transaction category (optional)
  final String? category;

  /// Order number (交易号)
  final String? orderNo;

  /// Merchant order number (商家订单号)
  final String? merchantOrderNo;

  const AlipayCustomFields({
    required this.status,
    this.category,
    this.orderNo,
    this.merchantOrderNo,
  });
}
