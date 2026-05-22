/// Confidence level for pending transactions
enum ConfidenceLevel {
  high,   // >= 85%
  medium, // 60-84%
  low;    // < 60%

  /// Parse confidence level from percentage value (0-100 or 0-1)
  static ConfidenceLevel fromPercentage(double percentage) {
    // Handle both 0-100 and 0-1 ranges
    final normalized = percentage > 1 ? percentage : percentage * 100;

    if (normalized >= 85) {
      return ConfidenceLevel.high;
    } else if (normalized >= 60) {
      return ConfidenceLevel.medium;
    } else {
      return ConfidenceLevel.low;
    }
  }

  /// Get display name for the confidence level
  String get displayName {
    switch (this) {
      case ConfidenceLevel.high:
        return '高置信度';
      case ConfidenceLevel.medium:
        return '需确认';
      case ConfidenceLevel.low:
        return '建议核对';
    }
  }

  /// Get English display name
  String get displayNameEn {
    switch (this) {
      case ConfidenceLevel.high:
        return 'High Confidence';
      case ConfidenceLevel.medium:
        return 'Needs Confirmation';
      case ConfidenceLevel.low:
        return 'Suggested Review';
    }
  }

  /// Get percentage range description
  double get defaultPercentage {
    switch (this) {
      case ConfidenceLevel.high:
        return 85;
      case ConfidenceLevel.medium:
        return 70;
      case ConfidenceLevel.low:
        return 40;
    }
  }

  /// Get percentage range description
  String get percentageRange {
    switch (this) {
      case ConfidenceLevel.high:
        return '>= 85%';
      case ConfidenceLevel.medium:
        return '60% - 84%';
      case ConfidenceLevel.low:
        return '< 60%';
    }
  }
}
