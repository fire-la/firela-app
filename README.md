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

## Features

- **Account Management**: View and manage your Beancount account paths
- **Transaction Visualization**: See your transactions in a beautiful mobile interface
- **Account Path Confirmation**: Validate and confirm account hierarchies
- **Real-time Sync**: Stay synchronized with the FIREla server backend
- **Offline Support**: Works offline, syncs when connection is restored

## Ecosystem Context

FIREla is part of the firela open source ecosystem, all built on the principle of **data sovereignty**:

```
┌─────────────────┐      ┌─────────────────┐
│   billclaw      │      │   FIREla        │
│   Data Import   │      │   Account Mgmt  │
│   (OpenClaw)    │      │   (Flutter)     │
└────────┬────────┘      └────────┬────────┘
         │  You hold the          │
         │  access tokens         │
         │                        │
         └───────────┬────────────┘
                     ▼
         ┌─────────────────────┐
         │  FIREla server      │
         │                     │
         │  Your data,         │
         │  your control       │
         └─────────────────────┘
```

- **billclaw**: Import your financial data (Plaid, Gmail) - **you hold the API keys**
- **FIREla**: Manage accounts on mobile - **you hold the account credentials**
- **FIREla server**: Backend for data processing - **your data remains yours**

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
- **Sync with any Beancount backend** - you're never locked in
- **Local-first architecture** - your data lives on your device first
- **Open source** - the code is transparent, just like your ledger

## Tech Stack

- **Framework**: Flutter (iOS/Android)
- **State Management**: Riverpod / Bloc
- **API**: REST + WebSocket to beancount backend
- **Local Storage**: Hive / SQLite
- **Language**: Dart

## Project Status

🚧 **Under Active Development** - Early planning phase

This project is currently in the planning stage. Check out the [issues](https://github.com/fire-la/firela/issues) for progress.

## Installation

### Prerequisites

- Flutter SDK 3.24.0 or higher
- Dart 3.5 or higher
- Android Studio / Xcode (for mobile development)
- FIREla server account

### Setup

```bash
# Clone the repository
git clone https://github.com/fire-la/firela.git
cd FIREla

# Install dependencies
flutter pub get

# Run the app
flutter run
```

## Configuration

Configure your FIREla server backend connection:

```dart
// lib/config/app_config.dart
const String BaseUrl = 'https://api.firela.io/';
const String apiKey = 'your-api-key';
```

## Development

```bash
# Run tests
flutter test

# Build for iOS
flutter build ios

# Build for Android
flutter build apk
```

## Contributing

Contributions are welcome! Please read our contributing guidelines before submitting PRs.

## License

MIT License - see [LICENSE](LICENSE) for details.

## Links

- GitHub: https://github.com/fire-la/firela
- billclaw: https://github.com/fire-la/billclaw
- Beancount: http://furius.ca/beancount/
- firela: https://github.com/fire-la

## Acknowledgments

Built for the Beancount community and the firela ecosystem.

**Data sovereignty isn't a feature—it's a foundation.**
