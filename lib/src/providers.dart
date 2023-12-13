import 'dart:convert';

import 'package:dart_synthizer/dart_synthizer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants.dart';
import 'json/game_options.dart';

part 'providers.g.dart';

/// The interface sounds source to use.
@riverpod
DirectSource interfaceSoundsSource(
  final InterfaceSoundsSourceRef ref,
  final Context synthizerContext,
) =>
    synthizerContext.createDirectSource();

/// The music source to use.
@riverpod
DirectSource musicSource(
  final MusicSourceRef ref,
  final Context synthizerContext,
) =>
    synthizerContext.createDirectSource();

/// The ambiances sounds source to use.
@riverpod
DirectSource ambianceSoundsSource(
  final AmbianceSoundsSourceRef ref,
  final Context synthizerContext,
) =>
    synthizerContext.createDirectSource();

/// The footstep sounds source to use.
@riverpod
DirectSource footstepSoundsSource(
  final FootstepSoundsSourceRef ref,
  final Context synthizerContext,
) =>
    synthizerContext.createDirectSource();

/// The shared preferences provider.
@riverpod
Future<SharedPreferences> sharedPreferences(final SharedPreferencesRef ref) =>
    SharedPreferences.getInstance();

/// The game options provider.
@riverpod
Future<GameOptions> gameOptions(final GameOptionsRef ref) async {
  final sharedPreferences = await ref.watch(sharedPreferencesProvider.future);
  final data = sharedPreferences.getString(gameOptionsKey);
  if (data == null) {
    return GameOptions();
  }
  final json = jsonDecode(data);
  return GameOptions.fromJson(json);
}
