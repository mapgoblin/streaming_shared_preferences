import 'package:shared_preferences/shared_preferences.dart';

/// A [PreferenceAdapter] knows how to retrieve and store a value associated
/// with a key by using a [SharedPreferences].
///
/// For examples, see:
/// * [BoolAdapter], [IntAdapter], [StringAdapter] for simple value adapters
/// * [DateTimeAdapter] and [JsonAdapter] for more involved value adapters
abstract class PreferenceAdapter<T> {
  const PreferenceAdapter();

  /// Retrieve a value associated with the [key] by using the [preferences].
  T get(SharedPreferences preferences, String key);

  /// Set a [value] for the [key] by using the [preferences].
  ///
  /// Returns true if value was successfully set, otherwise false.
  Future<bool> set(SharedPreferences preferences, String key, T value);
}