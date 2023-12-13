import 'package:dart_synthizer/dart_synthizer.dart';
import 'package:flutter/material.dart';

import '../json/game_options.dart';

/// An intent to adjust gain.
class AdjustGainIntent extends Intent {
  /// Create an instance.
  const AdjustGainIntent({
    required this.getSource,
    required this.getGain,
    required this.setGain,
    required this.gainModifier,
  });

  /// The function to call to get the source.
  final Source Function(Context synthizerContext) getSource;

  /// The function to call to get the current gain.
  final double Function(GameOptions gameOptions) getGain;

  /// The function to call to set the gain.
  final void Function(GameOptions gameOptions, double gain) setGain;

  /// The amount to adjust the gain by.
  final double gainModifier;
}
