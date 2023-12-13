import 'package:dart_synthizer/dart_synthizer.dart';
import 'package:flutter/material.dart';

import '../json/game_options.dart';
import 'adjust_gain_direction.dart';

/// An intent to adjust gain.
class AdjustGainIntent extends Intent {
  /// Create an instance.
  const AdjustGainIntent({
    required this.getSource,
    required this.getGain,
    required this.setGain,
    required this.gainDirection,
    this.gainModifier = 0.1,
    this.minGain = 0.0,
    this.maxGain = 10.0,
  });

  /// The function to call to get the source.
  final Source Function(Context synthizerContext) getSource;

  /// The function to call to get the current gain.
  final double Function(GameOptions gameOptions) getGain;

  /// The function to call to set the gain.
  final void Function(GameOptions gameOptions, double gain) setGain;

  /// The direction in which the gain should go.
  final AdjustGainDirection gainDirection;

  /// The amount to adjust gain by.
  final double gainModifier;

  /// The minimum gain.
  final double minGain;

  /// The maximum gain.
  final double maxGain;
}
