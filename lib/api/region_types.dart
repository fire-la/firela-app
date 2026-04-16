/// Region types for IGN API
///
/// Defines user-facing regions, region metadata, and related types.
/// Mirrors the backend's USER_FACING_REGIONS and RegionInfo types.
library;

/// User-facing region codes
///
/// These are the only valid values for region URL path parameters.
/// Internal-only regions (like 'eu-core') are excluded.
class Region {
  static const String cn = 'cn';
  static const String us = 'us';
  static const String de = 'de';

  /// All user-facing region codes
  static const List<String> all = [cn, us, de];

  /// Check if a region code is valid
  static bool isValid(String code) => all.contains(code);

  /// Parse a region code, returning null if invalid
  static String? tryParse(String? code) {
    if (code == null) return null;
    return isValid(code) ? code : null;
  }

  Region._();
}

/// Region configuration
class RegionConfig {
  final String currency;
  final String dateFormat;
  final String locale;
  final String? decimalSeparator;
  final String? thousandsSeparator;
  final String? currencySymbol;
  final String? currencyPosition;
  final List<String>? sharedFeatures;

  const RegionConfig({
    required this.currency,
    required this.dateFormat,
    required this.locale,
    this.decimalSeparator,
    this.thousandsSeparator,
    this.currencySymbol,
    this.currencyPosition,
    this.sharedFeatures,
  });

  factory RegionConfig.fromJson(Map<String, dynamic> json) {
    return RegionConfig(
      currency: json['currency'] as String,
      dateFormat: json['dateFormat'] as String,
      locale: json['locale'] as String,
      decimalSeparator: json['decimalSeparator'] as String?,
      thousandsSeparator: json['thousandsSeparator'] as String?,
      currencySymbol: json['currencySymbol'] as String?,
      currencyPosition: json['currencyPosition'] as String?,
      sharedFeatures: (json['sharedFeatures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }
}

/// Region metadata with hierarchy information
///
/// Provides the frontend with region hierarchy so it can understand
/// that 'de' inherits from 'eu-core' without 'eu-core' being selectable.
class RegionInfo {
  /// Region code (e.g., 'de', 'cn', 'us')
  final String code;

  /// Human-readable display name (e.g., 'Germany', 'China')
  final String displayName;

  /// Parent region code if this region inherits from another
  /// (e.g., 'eu-core' for 'de')
  final String? parent;

  /// Full inheritance chain from root to this region
  /// (e.g., ['eu-core', 'de'] for Germany)
  final List<String> chain;

  /// Region-specific configuration
  final RegionConfig config;

  const RegionInfo({
    required this.code,
    required this.displayName,
    this.parent,
    required this.chain,
    required this.config,
  });

  factory RegionInfo.fromJson(Map<String, dynamic> json) {
    return RegionInfo(
      code: json['code'] as String,
      displayName: json['displayName'] as String,
      parent: json['parent'] as String?,
      chain: (json['chain'] as List<dynamic>).map((e) => e as String).toList(),
      config: RegionConfig.fromJson(json['config'] as Map<String, dynamic>),
    );
  }
}
