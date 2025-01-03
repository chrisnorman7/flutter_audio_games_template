import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_soloud/flutter_soloud.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants.dart';
import 'json/game_options.dart';

part 'providers.g.dart';

/// The game options provider.
@riverpod
Future<GameOptions> gameOptions(final Ref ref) async {
  final sharedPreferences = SharedPreferencesAsync();
  final data = await sharedPreferences.getString(gameOptionsKey);
  final Map<String, dynamic> json;
  if (data == null) {
    json = {};
  } else {
    json = jsonDecode(data);
  }
  final soLoud = SoLoud.instance;
  final gameOptions = GameOptions.fromJson(json);
  soLoud.setGlobalVolume(gameOptions.masterVolume);
  return gameOptions;
}
