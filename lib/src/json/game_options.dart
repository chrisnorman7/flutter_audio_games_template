import 'dart:convert';

import 'package:dart_synthizer/dart_synthizer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_annotation/json_annotation.dart';

import '../constants.dart';
import '../providers.dart';

part 'game_options.g.dart';

/// A class to hold game options.
@JsonSerializable()
class GameOptions {
  /// Create an instance.
  GameOptions({
    this.interfaceSoundsGain = 0.7,
    this.musicGain = 0.7,
    this.ambiancesGain = 0.7,
    this.footstepSoundsGain = 0.7,
    this.pannerStrategy = PannerStrategy.stereo,
  });

  /// Create an instance from a JSON object.
  factory GameOptions.fromJson(final Map<String, dynamic> json) =>
      _$GameOptionsFromJson(json);

  /// The volume for interface sounds.
  double interfaceSoundsGain;

  /// The volume for music.
  double musicGain;

  /// The volume for ambiances.
  double ambiancesGain;

  /// The gain of footstep sounds.
  double footstepSoundsGain;

  /// The default panner strategy to use.
  PannerStrategy pannerStrategy;

  /// Convert an instance to JSON.
  Map<String, dynamic> toJson() => _$GameOptionsToJson(this);

  /// Save the options.
  ///
  /// If [invalidateProvider] is `true`, then [gameOptionsProvider] will be
  /// invalidated.
  Future<void> save(
    final WidgetRef ref, {
    final bool invalidateProvider = true,
  }) async {
    final sharedPreferences = await ref.read(sharedPreferencesProvider.future);
    final json = jsonEncode(this);
    await sharedPreferences.setString(gameOptionsKey, json);
    if (invalidateProvider) {
      ref.invalidate(gameOptionsProvider);
    }
  }
}
