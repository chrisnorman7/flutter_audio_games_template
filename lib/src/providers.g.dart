// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sharedPreferencesHash() => r'e607f7351fa94c298e3676fa14ad95aac093f433';

/// The shared preferences provider.
///
/// Copied from [sharedPreferences].
@ProviderFor(sharedPreferences)
final sharedPreferencesProvider =
    AutoDisposeFutureProvider<SharedPreferences>.internal(
  sharedPreferences,
  name: r'sharedPreferencesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedPreferencesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SharedPreferencesRef = AutoDisposeFutureProviderRef<SharedPreferences>;
String _$gameOptionsHash() => r'8098aabb551f53c612d1abfc8fa13c6bcde7d32d';

/// The game options provider.
///
/// Copied from [gameOptions].
@ProviderFor(gameOptions)
final gameOptionsProvider = AutoDisposeFutureProvider<GameOptions>.internal(
  gameOptions,
  name: r'gameOptionsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gameOptionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GameOptionsRef = AutoDisposeFutureProviderRef<GameOptions>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
