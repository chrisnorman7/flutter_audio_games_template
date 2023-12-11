// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$interfaceSoundsSourceHash() =>
    r'9cc49bbf3b77614d70b5e07ae299a71d2d8bca63';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// The interface sounds source to use.
///
/// Copied from [interfaceSoundsSource].
@ProviderFor(interfaceSoundsSource)
const interfaceSoundsSourceProvider = InterfaceSoundsSourceFamily();

/// The interface sounds source to use.
///
/// Copied from [interfaceSoundsSource].
class InterfaceSoundsSourceFamily extends Family<DirectSource> {
  /// The interface sounds source to use.
  ///
  /// Copied from [interfaceSoundsSource].
  const InterfaceSoundsSourceFamily();

  /// The interface sounds source to use.
  ///
  /// Copied from [interfaceSoundsSource].
  InterfaceSoundsSourceProvider call(
    Context synthizerContext,
  ) {
    return InterfaceSoundsSourceProvider(
      synthizerContext,
    );
  }

  @override
  InterfaceSoundsSourceProvider getProviderOverride(
    covariant InterfaceSoundsSourceProvider provider,
  ) {
    return call(
      provider.synthizerContext,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'interfaceSoundsSourceProvider';
}

/// The interface sounds source to use.
///
/// Copied from [interfaceSoundsSource].
class InterfaceSoundsSourceProvider extends AutoDisposeProvider<DirectSource> {
  /// The interface sounds source to use.
  ///
  /// Copied from [interfaceSoundsSource].
  InterfaceSoundsSourceProvider(
    Context synthizerContext,
  ) : this._internal(
          (ref) => interfaceSoundsSource(
            ref as InterfaceSoundsSourceRef,
            synthizerContext,
          ),
          from: interfaceSoundsSourceProvider,
          name: r'interfaceSoundsSourceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$interfaceSoundsSourceHash,
          dependencies: InterfaceSoundsSourceFamily._dependencies,
          allTransitiveDependencies:
              InterfaceSoundsSourceFamily._allTransitiveDependencies,
          synthizerContext: synthizerContext,
        );

  InterfaceSoundsSourceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.synthizerContext,
  }) : super.internal();

  final Context synthizerContext;

  @override
  Override overrideWith(
    DirectSource Function(InterfaceSoundsSourceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InterfaceSoundsSourceProvider._internal(
        (ref) => create(ref as InterfaceSoundsSourceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        synthizerContext: synthizerContext,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DirectSource> createElement() {
    return _InterfaceSoundsSourceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InterfaceSoundsSourceProvider &&
        other.synthizerContext == synthizerContext;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, synthizerContext.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin InterfaceSoundsSourceRef on AutoDisposeProviderRef<DirectSource> {
  /// The parameter `synthizerContext` of this provider.
  Context get synthizerContext;
}

class _InterfaceSoundsSourceProviderElement
    extends AutoDisposeProviderElement<DirectSource>
    with InterfaceSoundsSourceRef {
  _InterfaceSoundsSourceProviderElement(super.provider);

  @override
  Context get synthizerContext =>
      (origin as InterfaceSoundsSourceProvider).synthizerContext;
}

String _$musicSourceHash() => r'792636c84393756710152e73d8b403b423d64b56';

/// The music source to use.
///
/// Copied from [musicSource].
@ProviderFor(musicSource)
const musicSourceProvider = MusicSourceFamily();

/// The music source to use.
///
/// Copied from [musicSource].
class MusicSourceFamily extends Family<DirectSource> {
  /// The music source to use.
  ///
  /// Copied from [musicSource].
  const MusicSourceFamily();

  /// The music source to use.
  ///
  /// Copied from [musicSource].
  MusicSourceProvider call(
    Context synthizerContext,
  ) {
    return MusicSourceProvider(
      synthizerContext,
    );
  }

  @override
  MusicSourceProvider getProviderOverride(
    covariant MusicSourceProvider provider,
  ) {
    return call(
      provider.synthizerContext,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'musicSourceProvider';
}

/// The music source to use.
///
/// Copied from [musicSource].
class MusicSourceProvider extends AutoDisposeProvider<DirectSource> {
  /// The music source to use.
  ///
  /// Copied from [musicSource].
  MusicSourceProvider(
    Context synthizerContext,
  ) : this._internal(
          (ref) => musicSource(
            ref as MusicSourceRef,
            synthizerContext,
          ),
          from: musicSourceProvider,
          name: r'musicSourceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$musicSourceHash,
          dependencies: MusicSourceFamily._dependencies,
          allTransitiveDependencies:
              MusicSourceFamily._allTransitiveDependencies,
          synthizerContext: synthizerContext,
        );

  MusicSourceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.synthizerContext,
  }) : super.internal();

  final Context synthizerContext;

  @override
  Override overrideWith(
    DirectSource Function(MusicSourceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MusicSourceProvider._internal(
        (ref) => create(ref as MusicSourceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        synthizerContext: synthizerContext,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DirectSource> createElement() {
    return _MusicSourceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MusicSourceProvider &&
        other.synthizerContext == synthizerContext;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, synthizerContext.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MusicSourceRef on AutoDisposeProviderRef<DirectSource> {
  /// The parameter `synthizerContext` of this provider.
  Context get synthizerContext;
}

class _MusicSourceProviderElement
    extends AutoDisposeProviderElement<DirectSource> with MusicSourceRef {
  _MusicSourceProviderElement(super.provider);

  @override
  Context get synthizerContext =>
      (origin as MusicSourceProvider).synthizerContext;
}

String _$ambianceSoundsSourceHash() =>
    r'42869b037f60c5627ae33da550ec45622694ccb1';

/// The ambiances sounds source to use.
///
/// Copied from [ambianceSoundsSource].
@ProviderFor(ambianceSoundsSource)
const ambianceSoundsSourceProvider = AmbianceSoundsSourceFamily();

/// The ambiances sounds source to use.
///
/// Copied from [ambianceSoundsSource].
class AmbianceSoundsSourceFamily extends Family<DirectSource> {
  /// The ambiances sounds source to use.
  ///
  /// Copied from [ambianceSoundsSource].
  const AmbianceSoundsSourceFamily();

  /// The ambiances sounds source to use.
  ///
  /// Copied from [ambianceSoundsSource].
  AmbianceSoundsSourceProvider call(
    Context synthizerContext,
  ) {
    return AmbianceSoundsSourceProvider(
      synthizerContext,
    );
  }

  @override
  AmbianceSoundsSourceProvider getProviderOverride(
    covariant AmbianceSoundsSourceProvider provider,
  ) {
    return call(
      provider.synthizerContext,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'ambianceSoundsSourceProvider';
}

/// The ambiances sounds source to use.
///
/// Copied from [ambianceSoundsSource].
class AmbianceSoundsSourceProvider extends AutoDisposeProvider<DirectSource> {
  /// The ambiances sounds source to use.
  ///
  /// Copied from [ambianceSoundsSource].
  AmbianceSoundsSourceProvider(
    Context synthizerContext,
  ) : this._internal(
          (ref) => ambianceSoundsSource(
            ref as AmbianceSoundsSourceRef,
            synthizerContext,
          ),
          from: ambianceSoundsSourceProvider,
          name: r'ambianceSoundsSourceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ambianceSoundsSourceHash,
          dependencies: AmbianceSoundsSourceFamily._dependencies,
          allTransitiveDependencies:
              AmbianceSoundsSourceFamily._allTransitiveDependencies,
          synthizerContext: synthizerContext,
        );

  AmbianceSoundsSourceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.synthizerContext,
  }) : super.internal();

  final Context synthizerContext;

  @override
  Override overrideWith(
    DirectSource Function(AmbianceSoundsSourceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AmbianceSoundsSourceProvider._internal(
        (ref) => create(ref as AmbianceSoundsSourceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        synthizerContext: synthizerContext,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DirectSource> createElement() {
    return _AmbianceSoundsSourceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AmbianceSoundsSourceProvider &&
        other.synthizerContext == synthizerContext;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, synthizerContext.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AmbianceSoundsSourceRef on AutoDisposeProviderRef<DirectSource> {
  /// The parameter `synthizerContext` of this provider.
  Context get synthizerContext;
}

class _AmbianceSoundsSourceProviderElement
    extends AutoDisposeProviderElement<DirectSource>
    with AmbianceSoundsSourceRef {
  _AmbianceSoundsSourceProviderElement(super.provider);

  @override
  Context get synthizerContext =>
      (origin as AmbianceSoundsSourceProvider).synthizerContext;
}

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
String _$gameOptionsHash() => r'34f008f7f1db9332ce30360d80daf2c75c5c082c';

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
