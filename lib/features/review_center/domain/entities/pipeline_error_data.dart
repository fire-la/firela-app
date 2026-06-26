/// Branch data for PIPELINE_ERROR reviews (backend `PipelineErrorBranchData`).
///
/// The error category ([errorType]) and human-readable detail ([errorMessage])
/// drive the PipelineErrorCard. The matched transaction and suggested fix are
/// backend-only: the detail page already shows the transaction info, and FIX
/// consumes `suggestedFix` server-side with no user payload, so neither is
/// surfaced to the UI.
class PipelineErrorData {
  const PipelineErrorData({
    required this.errorType,
    required this.errorMessage,
  });

  /// Error category wire value: 'BOOKING' | 'BALANCE' | 'VALIDATION'.
  final String errorType;

  /// Human-readable error detail (the card body).
  final String errorMessage;
}
