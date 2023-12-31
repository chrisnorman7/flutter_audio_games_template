/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

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

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
