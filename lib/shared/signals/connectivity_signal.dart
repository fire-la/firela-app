import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:signals_flutter/signals_flutter.dart';

/// Connection type enumeration
enum ConnectionType {
  wifi,
  mobile,
  ethernet,
  vpn,
  bluetooth,
  none,
  unknown,
}

/// Global connectivity signal
/// Tracks online status and connection type
final connectivitySignal = signal<ConnectivityState>(ConnectivityState.initial());

/// Connectivity state model
class ConnectivityState {
  final bool isOnline;
  final ConnectionType connectionType;
  final DateTime? lastChanged;

  const ConnectivityState({
    required this.isOnline,
    required this.connectionType,
    this.lastChanged,
  });

  factory ConnectivityState.initial() => const ConnectivityState(
        isOnline: true, // Assume online initially
        connectionType: ConnectionType.unknown,
        lastChanged: null,
      );

  ConnectivityState copyWith({
    bool? isOnline,
    ConnectionType? connectionType,
    DateTime? lastChanged,
  }) {
    return ConnectivityState(
      isOnline: isOnline ?? this.isOnline,
      connectionType: connectionType ?? this.connectionType,
      lastChanged: lastChanged ?? this.lastChanged,
    );
  }

  @override
  String toString() => 'ConnectivityState(isOnline: $isOnline, type: $connectionType)';
}

/// Connectivity service singleton
/// Manages connectivity monitoring and state updates
class ConnectivityService {
  ConnectivityService._();
  static final ConnectivityService instance = ConnectivityService._();

  final _connectivity = Connectivity();
  StreamSubscription<List<ConnectivityResult>>? _subscription;

  /// Start monitoring connectivity
  void startMonitoring() {
    _subscription?.cancel();
    _subscription = _connectivity.onConnectivityChanged.listen(_onConnectivityChanged);

    // Check initial state
    _checkConnectivity();
  }

  /// Stop monitoring connectivity
  void stopMonitoring() {
    _subscription?.cancel();
    _subscription = null;
  }

  /// Check current connectivity status
  Future<void> _checkConnectivity() async {
    try {
      final results = await _connectivity.checkConnectivity();
      _onConnectivityChanged(results);
    } catch (e) {
      // If we can't check connectivity, assume offline
      _updateState(false, ConnectionType.unknown);
    }
  }

  /// Handle connectivity changes
  void _onConnectivityChanged(List<ConnectivityResult> results) {
    final connectionType = _mapConnectionType(results);
    final isOnline = connectionType != ConnectionType.none;

    _updateState(isOnline, connectionType);
  }

  /// Update connectivity state
  void _updateState(bool isOnline, ConnectionType connectionType) {
    final previousState = connectivitySignal.value;

    // Only update if state changed
    if (previousState.isOnline != isOnline || previousState.connectionType != connectionType) {
      connectivitySignal.value = ConnectivityState(
        isOnline: isOnline,
        connectionType: connectionType,
        lastChanged: DateTime.now(),
      );
    }
  }

  /// Map connectivity result to connection type
  ConnectionType _mapConnectionType(List<ConnectivityResult> results) {
    if (results.isEmpty || results.contains(ConnectivityResult.none)) {
      return ConnectionType.none;
    }

    // Priority order for multiple connection types
    if (results.contains(ConnectivityResult.wifi)) {
      return ConnectionType.wifi;
    }
    if (results.contains(ConnectivityResult.mobile)) {
      return ConnectionType.mobile;
    }
    if (results.contains(ConnectivityResult.ethernet)) {
      return ConnectionType.ethernet;
    }
    if (results.contains(ConnectivityResult.vpn)) {
      return ConnectionType.vpn;
    }
    if (results.contains(ConnectivityResult.bluetooth)) {
      return ConnectionType.bluetooth;
    }

    return ConnectionType.unknown;
  }

  /// Get current online status
  bool get isOnline => connectivitySignal.value.isOnline;

  /// Get current connection type
  ConnectionType get connectionType => connectivitySignal.value.connectionType;
}
