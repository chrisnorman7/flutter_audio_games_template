import 'dart:convert';

import 'package:flutter_soloud/flutter_soloud.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants.dart';
import 'json/game_options.dart';

part 'providers.g.dart';

/// The shared preferences provider.
@riverpod
Future<SharedPreferences> sharedPreferences(final SharedPreferencesRef ref) =>
    SharedPreferences.getInstance();

/// The game options provider.
@riverpod
Future<GameOptions> gameOptions(final GameOptionsRef ref) async {
  final sharedPreferences = await ref.watch(sharedPreferencesProvider.future);
  final data = sharedPreferences.getString(gameOptionsKey);
  final soLoud = SoLoud.instance;
  if (data == null) {
    return GameOptions(masterVolume: soLoud.getGlobalVolume());
  }
  final json = jsonDecode(data);
  final gameOptions = GameOptions.fromJson(json);
  soLoud.setGlobalVolume(gameOptions.masterVolume);
  return gameOptions;
}
