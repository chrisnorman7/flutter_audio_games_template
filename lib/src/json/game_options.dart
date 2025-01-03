import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';
import '../providers.dart';

part 'game_options.g.dart';

/// A class to hold game options.
@JsonSerializable()
class GameOptions {
  /// Create an instance.
  GameOptions({required this.masterVolume});

  /// Create an instance from a JSON object.
  factory GameOptions.fromJson(final Map<String, dynamic> json) =>
      _$GameOptionsFromJson(json);

  /// The master volume.
  double masterVolume;

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
    final sharedPreferences = SharedPreferencesAsync();
    final json = jsonEncode(this);
    await sharedPreferences.setString(gameOptionsKey, json);
    if (invalidateProvider) {
      ref.invalidate(gameOptionsProvider);
    }
  }
}
