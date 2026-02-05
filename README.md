# beanclaw

> **Your Beancount Account Keeper** - Mobile app for managing your Beancount accounts on the go.

beanclaw is a Flutter mobile application for Beancount account management, transaction visualization, and account path confirmation. It works seamlessly with a beancount SaaS backend and complements **billclaw** for complete financial data sovereignty.

## Features

- **Account Management**: View and manage your Beancount account paths
- **Transaction Visualization**: See your transactions in a beautiful mobile interface
- **Account Path Confirmation**: Validate and confirm account hierarchies
- **Real-time Sync**: Stay synchronized with the beancount SaaS backend
- **Offline Support**: Works offline, syncs when connection is restored

## Ecosystem Context

beanclaw is part of the fire-zu open source ecosystem:

```
┌─────────────────┐      ┌─────────────────┐
│   billclaw      │ ───▶ │   beanclaw      │
│   Data Import   │      │   Account Mgmt  │
│   (OpenClaw)    │      │   (Flutter)     │
└────────┬────────┘      └────────┬────────┘
         │                       │
         └───────────┬───────────┘
                     ▼
         ┌─────────────────────┐
         │ Beancount SaaS      │
         │     Backend         │
         └─────────────────────┘
```

- **billclaw**: Imports your financial data (Plaid, Gmail) locally
- **beanclaw**: Manages and visualizes your accounts on mobile
- **SaaS Backend**: Beancount data storage and processing service

## Tech Stack

- **Framework**: Flutter (iOS/Android)
- **State Management**: Riverpod / Bloc
- **API**: REST + WebSocket to beancount backend
- **Local Storage**: Hive / SQLite
- **Language**: Dart

## Project Status

🚧 **Under Active Development** - Early planning phase

This project is currently in the planning stage. Check out the [issues](https://github.com/fire-zu/beanclaw/issues) for progress.

## Installation

### Prerequisites

- Flutter SDK 3.24.0 or higher
- Dart 3.5 or higher
- Android Studio / Xcode (for mobile development)
- Beancount SaaS account

### Setup

```bash
# Clone the repository
git clone https://github.com/fire-zu/beanclaw.git
cd beanclaw

# Install dependencies
flutter pub get

# Run the app
flutter run
```

## Configuration

Configure your beancount SaaS backend connection:

```dart
// lib/config/app_config.dart
const String saasBaseUrl = 'https://your-beancount-saas.com';
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

- GitHub: https://github.com/fire-zu/beanclaw
- billclaw: https://github.com/fire-zu/billclaw
- fire-zu: https://github.com/fire-zu

## Acknowledgments

Built for the Beancount community and the fire-zu ecosystem.
