/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

class $SoundsGen {
  const $SoundsGen();

  $SoundsInterfaceGen get interface => const $SoundsInterfaceGen();
  $SoundsMenusGen get menus => const $SoundsMenusGen();
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

class Assets {
  Assets._();

  static const $SoundsGen sounds = $SoundsGen();
}
