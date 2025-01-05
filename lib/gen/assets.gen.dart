/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

class $SoundsGen {
  const $SoundsGen();

  /// Directory path: sounds/interface
  $SoundsInterfaceGen get interface => const $SoundsInterfaceGen();

  /// Directory path: sounds/menus
  $SoundsMenusGen get menus => const $SoundsMenusGen();

  /// Directory path: sounds/music
  $SoundsMusicGen get music => const $SoundsMusicGen();
}

class $SoundsInterfaceGen {
  const $SoundsInterfaceGen();

  /// File path: sounds/interface/intro.wav
  String get intro => 'sounds/interface/intro.wav';

  /// File path: sounds/interface/volume_change.wav
  String get volumeChange => 'sounds/interface/volume_change.wav';

  /// List of all assets
  List<String> get values => [intro, volumeChange];
}

class $SoundsMenusGen {
  const $SoundsMenusGen();

  /// File path: sounds/menus/activate.wav
  String get activate => 'sounds/menus/activate.wav';

  /// File path: sounds/menus/select.wav
  String get select => 'sounds/menus/select.wav';

  /// Directory path: sounds/menus/voices
  $SoundsMenusVoicesGen get voices => const $SoundsMenusVoicesGen();

  /// List of all assets
  List<String> get values => [activate, select];
}

class $SoundsMusicGen {
  const $SoundsMusicGen();

  /// File path: sounds/music/main_theme.wav
  String get mainTheme => 'sounds/music/main_theme.wav';

  /// List of all assets
  List<String> get values => [mainTheme];
}

class $SoundsMenusVoicesGen {
  const $SoundsMenusVoicesGen();

  /// File path: sounds/menus/voices/game_options.mp3
  String get gameOptions => 'sounds/menus/voices/game_options.mp3';

  /// File path: sounds/menus/voices/play_game.mp3
  String get playGame => 'sounds/menus/voices/play_game.mp3';

  /// File path: sounds/menus/voices/visit_git_hub.mp3
  String get visitGitHub => 'sounds/menus/voices/visit_git_hub.mp3';

  /// List of all assets
  List<String> get values => [gameOptions, playGame, visitGitHub];
}

class Assets {
  Assets._();

  static const $SoundsGen sounds = $SoundsGen();
}
