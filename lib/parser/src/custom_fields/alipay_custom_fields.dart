/// Alipay-specific transaction fields
///
/// These fields are extracted from Alipay CSV exports
/// and attached to RawTransaction.customFields
class AlipayCustomFields {
  /// Transaction status
  /// - 交易成功 (success)
  /// - 交易关闭 (closed)
  /// - 退款 (refunded)
  final String status;

  /// Transaction category (optional)
  final String? category;

  /// Order number / transaction ID (交易号)
  final String? orderNo;

  /// Merchant order number (商家订单号)
  final String? merchantOrderNo;

  /// Payment method (e.g., 余额, 余额宝, 花呗)
  final String? paymentMethod;

  /// Whether this is a refund
  bool get isRefund => status.contains('退款');

  /// Whether the transaction was successful
  bool get isSuccess => status.contains('成功');

  const AlipayCustomFields({
    required this.status,
    this.category,
    this.orderNo,
    this.merchantOrderNo,
    this.paymentMethod,
  });

  @override
  String toString() {
    return 'AlipayCustomFields(orderNo: $orderNo, status: $status)';
  }
}
