/// WeChat-specific transaction fields
///
/// These fields are extracted from WeChat CSV/XLSX exports
/// and attached to RawTransaction.customFields
class WechatCustomFields {
  /// Transaction type (e.g., 支出, 收入, /)
  final String? type;

  /// Transaction status (e.g., 已支付, 已转账)
  final String? status;

  /// Payment method (e.g., 零钱, 银行卡)
  final String? paymentMethod;

  /// Transaction ID / order number (交易单号)
  final String? transactionId;

  /// Merchant order number (商户单号)
  final String? merchantOrderNo;

  /// Whether this is a refund
  bool get isRefund => status?.contains('退款') ?? false;

  /// Whether the transaction was successful
  bool get isSuccess => status?.contains('成功') ?? true;

  const WechatCustomFields({
    this.type,
    this.status,
    this.paymentMethod,
    this.transactionId,
    this.merchantOrderNo,
  });

  @override
  String toString() {
    return 'WechatCustomFields(transactionId: $transactionId, status: $status)';
  }
}
