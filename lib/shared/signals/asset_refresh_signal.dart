import 'package:signals_flutter/signals_flutter.dart';

/// Global signal that triggers asset/balance data refresh across pages.
/// Incrementing this signal causes any watching widget to re-fetch its data.
final assetRefreshSignal = signal<int>(0);

/// Call this after any transaction creation (OCR, NLP, bill import)
/// to trigger a refresh of balance/asset data across all tabs.
void refreshAssetData() {
  assetRefreshSignal.value++;
}
