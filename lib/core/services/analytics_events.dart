/// Analytics event names following snake_case convention
class AnalyticsEvents {
  AnalyticsEvents._();

  // Bill Import Events
  static const String billFileSelected = 'bill_file_selected';
  static const String billImportStarted = 'bill_import_started';
  static const String billImportSuccess = 'bill_import_success';
  static const String billImportFailed = 'bill_import_failed';
  static const String nlpResultDisplayed = 'nlp_result_displayed';

  // OCR Events
  static const String ocrImageSelected = 'ocr_image_selected';
  static const String ocrProcessingStarted = 'ocr_processing_started';
  static const String ocrProcessingSuccess = 'ocr_processing_success';
  static const String ocrProcessingFailed = 'ocr_processing_failed';
  static const String ocrResultConfirmed = 'ocr_result_confirmed';

  // Review Center Events
  static const String reviewListViewed = 'review_list_viewed';
  static const String reviewTabSwitched = 'review_tab_switched';
  static const String reviewTransactionApproved = 'review_transaction_approved';
  static const String reviewTransactionRejected = 'review_transaction_rejected';
  static const String reviewTransactionEdited = 'review_transaction_edited';

  // Expense Entry Events
  static const String expenseCreated = 'expense_created';
  static const String expenseUpdated = 'expense_updated';
  static const String photoRecognitionUsed = 'photo_recognition_used';
  static const String manualEntryUsed = 'manual_entry_used';
  static const String expenseButtonClicked = 'expense_button_clicked';
}

/// Analytics event properties
class AnalyticsProps {
  AnalyticsProps._();

  // Common
  static const String success = 'success';
  static const String errorMessage = 'error_message';
  static const String duration = 'duration_ms';

  // Bill Import
  static const String fileType = 'file_type'; // csv, xlsx
  static const String fileSize = 'file_size_bytes';
  static const String recordCount = 'record_count';

  // OCR
  static const String imageSource = 'image_source'; // camera, gallery
  static const String confidence = 'confidence'; // OCR confidence score
  static const String merchant = 'merchant'; // Recognized merchant name

  // Review Center
  static const String tabName = 'tab_name';
  static const String confidenceLevel = 'confidence_level';
  static const String transactionId = 'transaction_id';

  // Expense
  static const String amount = 'amount';
  static const String currency = 'currency';
  static const String category = 'category';
  static const String hasPhoto = 'has_photo';
}
