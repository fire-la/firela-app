import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Hook for debouncing values
T useDebounce<T>(T value, Duration duration) {
  final debouncedValue = useState<T>(value);

  useEffect(() {
    final timer = Timer(duration, () {
      debouncedValue.value = value;
    });

    return timer.cancel;
  }, [value]);

  return debouncedValue.value;
}

/// Hook for debouncing callbacks
VoidCallback useDebounceCallback(
  VoidCallback callback,
  Duration duration,
) {
  final timer = useRef<Timer?>(null);

  useEffect(() {
    return () => timer.value?.cancel();
  }, []);

  return useCallback(() {
    timer.value?.cancel();
    timer.value = Timer(duration, callback);
  }, [callback]);
}
