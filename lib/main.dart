import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'app.dart';

/// Signal to track whether background initialization is complete.
/// The splash screen watches this to decide when to transition.
final appInitializedSignal = signal(false);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load locale date symbols so locale-aware DateFormat works for all locales
  // (e.g. the transaction list's date-group headers in zh). Fast/local.
  await initializeDateFormatting();

  // Start runApp IMMEDIATELY — splash screen renders on first frame.
  // Heavy initialization runs in background via the splash page.
  runApp(const FirelaApp());
}
