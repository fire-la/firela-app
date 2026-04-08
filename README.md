# FIREla

> **Beancount account management for mobile - Data sovereignty for your financial data**

## Data Sovereignty First

FIREla is built on the same core principle as **Beancount**: **your financial data belongs to you**.

```
Traditional finance apps:
  User → [App Server] → Your data is locked in their database

Beancount philosophy:
  User → [Plain Text Files] → Complete ownership and control
```

Beancount was designed from the ground up as a **data sovereignty** tool:
- **Plain text format** - Your ledger is human-readable and editable
- **No vendor lock-in** - Your data isn't trapped in proprietary formats
- **Version control friendly** - Track changes with Git, never lose history
- **Transparent** - Every transaction is visible, no hidden algorithms
- **Future-proof** - Plain text files last forever

FIREla extends this philosophy to mobile: **manage your Beancount accounts on your phone while keeping full control of your data**.

## Current Features

- **Bank Statement Parsing**: Parse bank statements from multiple regions into structured data
  - China: Alipay (mobile/web/yuebao), CCB debit, CMBC credit
  - Europe: Deutsche Bank, Degiro, Interactive Brokers
  - Hong Kong: HSBC
- **API Client**: Dio-based HTTP client with environment-based URL configuration
- **OpenAPI Type Generation**: Configured infrastructure for generating Dart types from OpenAPI spec
- **Region Types**: Region-specific configuration and data types

## Ecosystem Context

FIREla is part of the firela open source ecosystem, all built on the principle of **data sovereignty**:

```
┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐
│  firela-connect │  │   FIREla        │  │   firela-vlt    │  │   firela-relay  │
│  Data Import    │  │   Account Mgmt  │  │   Beancount     │  │   Open Banking  │
│  (billclaw)     │  │   (Flutter)     │  │   Ledger Store  │  │   Relay Service │
└────────┬────────┘  └────────┬────────┘  └────────┬────────┘  └────────┬────────┘
         │  You hold the          │                    │                    │
         │  access tokens         │                    │                    │
         └───────────┬────────────┘                    │                    │
                     ▼                                 ▼                    ▼
                     ─────────────── Your data, your control ───────────────
```

- **firela-connect** (billclaw): Import your financial data - **you hold the API keys**
- **FIREla**: Manage accounts on mobile - **you hold the account credentials**
- **firela-vlt**: Beancount ledger store for transaction data - **your ledger, your rules**
- **firela-relay**: Open banking relay service - **your connections, your control**

## Why Data Sovereignty Matters

### The Problem with Traditional Finance Apps

Most finance apps follow a familiar pattern:

1. You link your bank accounts through their service
2. They store your access tokens and transaction history
3. Your data is locked in their proprietary database
4. Switching apps means starting over
5. You have zero visibility into how your data is used

### The Beancount Way

Beancount pioneered a different approach:

```
2024-01-15 * "Buy coffee"
  Expenses:Cafe:Coffee        5.00 CNY
  Assets:Checking:BankOfChina

↓ This is YOUR data, in YOUR format, under YOUR control
```

- **You own the format** - Plain text, no proprietary encoding
- **you choose the tools** - Use any editor, any viewer, any processor
- **You control the storage** - Local files, Git, or your own cloud
- **You enable auditing** - Every change is traceable

### How FIREla Extends This

FIREla brings Beancount's data sovereignty philosophy to mobile:

- **Native mobile experience** without sacrificing data ownership
- **Sync with any Beancount vault** - you're never locked in
- **Local-first architecture** - your data lives on your device first
- **Open source** - the code is transparent, just like your ledger

## Tech Stack

- **Framework**: Flutter (iOS/Android)
- **Language**: Dart (>=3.2.0 <4.0.0)
- **HTTP Client**: Dio 5.x
- **Financial Arithmetic**: decimal (precise decimal calculations)
- **Data Parsing**: csv, charset (with GBK support)
- **API Types**: OpenAPI generator (configured, manual wrappers currently in use)
- **Serialization**: json_annotation, built_value

## Project Structure

```
lib/
├── api/
│   ├── api_client.dart       # Dio HTTP client with env-based config
│   ├── ign_api.dart          # API service methods
│   ├── ign_api_example.dart  # Usage example
│   └── region_types.dart     # Region configuration types
└── parser/
    ├── parser.dart            # Library exports
    └── src/
        ├── cn/                # Chinese bank parsers
        ├── eu/                # European bank parsers
        ├── hk/                # Hong Kong bank parsers
        └── utils/             # Shared parsing utilities
```

## Project Status

🚧 **Under Active Development** - Early phase

This project currently provides bank statement parsers and an API client layer. Mobile app features are in development.

## Installation

### Prerequisites

- Flutter SDK (Dart >=3.2.0)
- Android Studio / Xcode (for mobile development)
- FIREla server account

### Setup

```bash
# Clone the repository
git clone https://github.com/fire-la/firela-app.git
cd firela-app

# Install dependencies
flutter pub get
```

### Running

```bash
# Development (default API URL: http://localhost:3334/api/v1)
flutter run

# With custom API URL
flutter run --dart-define=API_URL=http://localhost:3334/api/v1

# Production
flutter run --dart-define=API_URL=https://api.firela.com/api/v1
```

## Configuration

API endpoint is configured via `--dart-define` at build time (see `lib/api/api_client.dart`):

```dart
// Default value used when API_URL is not specified
baseUrl: const String.fromEnvironment(
  'API_URL',
  defaultValue: 'http://localhost:3334/api/v1',
),
```

## Development

```bash
# Run tests
flutter test

# Run Dart analysis
dart analyze

# Generate OpenAPI types (when ready to enable code generation)
flutter pub run build_runner build --delete-conflicting-outputs
```

## Contributing

Contributions are welcome! Please read our contributing guidelines before submitting PRs.

## License

MIT License - see [LICENSE](LICENSE) for details.

## Links

- GitHub: https://github.com/fire-la/firela-app
- billclaw: https://github.com/fire-la/billclaw
- Beancount: http://furius.ca/beancount/
- firela: https://github.com/fire-la

## Acknowledgments

Built for the Beancount community and the firela ecosystem.

**Data sovereignty isn't a feature—it's a foundation.**
