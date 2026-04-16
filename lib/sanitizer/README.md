# Firela Sanitizer

PII (Personally Identifiable Information) detection and masking for transaction data. Region-aware with configurable rule sets.

Used before uploading parsed transactions to the server — strips sensitive data on-device.

## Quick Start

```dart
import 'package:firela/sanitizer/sanitizer.dart';
import 'package:firela/parser/parser.dart';

// Create engine for user's region
final engine = SanitizeEngine('cn');

// Sanitize parsed transactions
final result = engine.sanitize(transactions);

if (result.success) {
  final sanitized = result.data;    // List<RawTransaction>
  final report = result.report;     // SanitizeReport

  print('Scanned: ${report.totalScanned}');
  print('Sanitized: ${report.totalSanitized}');

  for (final finding in report.findings) {
    print('[${finding.piiType}] ${finding.field} -> ${finding.action}');
  }
}
```

## SanitizeEngine

### Constructor

```dart
// By region (uses 'regular' rule set by default)
final engine = SanitizeEngine('cn');

// With options
final engine = SanitizeEngine({
  'region': 'us',
  'ruleMode': 'community',  // More aggressive masking
});
```

### Method

```dart
SanitizeResult sanitize(List<RawTransaction> transactions)
```

Returns `SanitizeResult` with:
- `success: true` -> `data` (sanitized transactions) + `report` (audit trail)
- `success: false` -> `error` (error message)

## Rule Sets

| Mode | Categories Masked | Confidence | Use Case |
|------|-------------------|------------|----------|
| `regular` (default) | `personal` only | MEDIUM+ | Normal user data |
| `community` | `personal`, `financial`, `contact` | LOW+ | Community sharing |

```dart
// Regular — masks names, IDs (keeps bank cards, phones)
final engine = SanitizeEngine({'region': 'cn', 'ruleMode': 'regular'});

// Community — masks everything including bank cards, phones, emails
final engine = SanitizeEngine({'region': 'cn', 'ruleMode': 'community'});
```

## Region Patterns

Each region has specific PII detection patterns:

| Region | Patterns |
|--------|----------|
| `cn` | ID card (身份证), mobile phone, passport, bank card |
| `hk` | HK phone, HK ID card |
| `us` | SSN, US phone |
| `eu` | IBAN |
| All regions | Email, credit card number (universal) |

EU covers 30 countries: AT, BE, BG, HR, CY, CZ, DK, EE, FI, FR, DE, GR, HU, IE, IT, LV, LT, LU, MT, NL, PL, PT, RO, SK, SI, ES, SE, IS, LI, NO.

## Masking Functions

Each PII type has a specific masking strategy:

| PII Type | Mask Function | Example |
|----------|---------------|---------|
| Name | `maskName` | `John` -> `J***` |
| Bank account | `maskAccount` | `1234567890` -> `****7890` |
| Phone | `maskPhone` | `12345678901` -> `123****8901` |
| ID card | `maskIdCard` | `110101199001011234` -> `****1234` |
| Email | `maskEmail` | `john@example.com` -> `j**@example.com` |
| Address | `maskAddress` | Any -> `[desensitized]` |
| IBAN | `maskIban` | `DE89370400440532013000` -> `****3000` |
| SSN | `maskSsn` | Any -> `***-**-****` |

## SanitizeReport

```dart
class SanitizeReport {
  final int totalScanned;      // Total transactions scanned
  final int totalSanitized;    // Items where PII was masked
  final List<PiiFinding> findings;
}

class PiiFinding {
  final int transactionIndex;
  final String field;          // 'payee', 'description', 'metadata.key'
  final String piiType;        // 'id_card_cn', 'phone_cn', 'email', etc.
  final String confidence;     // 'HIGH', 'MEDIUM', 'LOW'
  final String action;         // 'masked' or 'kept' (below threshold)
}
```

## Confidence Levels

Patterns validate matches with different confidence levels:

- **HIGH** — Pattern + checksum/validation pass (e.g., valid ID card check digit)
- **MEDIUM** — Pattern match only, no validator
- **LOW** — Pattern match but validation failed

Only findings at or above the rule set's minimum confidence are masked.

## Typical Pipeline

```dart
// 1. Parse file
final registry = ParserRegistry();
final parser = registry.detect(filename, bytes);
final parseResult = parser!.parse(bytes);

// 2. Sanitize before upload
final sanitizer = SanitizeEngine(userRegion);
final sanitizeResult = sanitizer.sanitize((parseResult as ParseSuccess).data);

if (sanitizeResult.success) {
  // 3. Upload sanitized data
  await api.providerSync.providerSyncControllerSync(
    region: userRegion,
    providerName: 'alipay',
    body: ProviderSyncDtoBuilder()
      ..transactions = /* map sanitized data */
      .build(),
  );
}
```

## Design Principles

- **On-device only** — No PII leaves the device unsanitized
- **Region-aware** — Different patterns per country/region
- **Configurable** — Two rule sets for different trust levels
- **Audit trail** — Every finding is recorded in the report
- **Validator-based** — Checksums reduce false positives (ID cards, IBANs, SSNs)
