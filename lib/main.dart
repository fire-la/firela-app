import 'package:flutter/material.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'app.dart';

/// Signal to track whether background initialization is complete.
/// The splash screen watches this to decide when to transition.
final appInitializedSignal = signal(false);

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Start runApp IMMEDIATELY — splash screen renders on first frame.
  // Heavy initialization runs in background via the splash page.
  runApp(const FirelaApp());
}
