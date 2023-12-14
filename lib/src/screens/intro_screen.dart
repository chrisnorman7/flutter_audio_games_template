import 'package:backstreets_widgets/screens.dart';
import 'package:dart_synthizer/dart_synthizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_games/flutter_audio_games.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_synthizer/flutter_synthizer.dart';

import '../../gen/assets.gen.dart';
import '../menus/main_menu.dart';
import '../providers.dart';

/// The intro screen.
class IntroScreen extends ConsumerStatefulWidget {
  /// Create an instance.
  const IntroScreen({
    super.key,
  });

  /// Create state for this widget.
  @override
  IntroScreenState createState() => IntroScreenState();
}

/// State for [IntroScreen].
class IntroScreenState extends ConsumerState<IntroScreen> {
  /// The interface sounds source.
  late Source interfaceSoundsSource;

  /// The music source.
  late Source musicSource;

  /// The ambiances source.
  late Source ambianceSoundsSource;

  /// The footstep sounds source.
  late Source footstepSoundsSource;

  /// Dispose of the widget.
  @override
  void dispose() {
    super.dispose();
    for (final source in [
      interfaceSoundsSource,
      musicSource,
      ambianceSoundsSource,
      footstepSoundsSource,
    ]) {
      source.destroy();
    }
  }

  /// Build a widget.
  @override
  Widget build(final BuildContext context) {
    final synthizerContext = context.synthizerContext;
    interfaceSoundsSource = ref.watch(
      interfaceSoundsSourceProvider(synthizerContext),
    );
    musicSource = ref.watch(musicSourceProvider(synthizerContext));
    ambianceSoundsSource = ref.watch(
      ambianceSoundsSourceProvider(synthizerContext),
    );
    footstepSoundsSource = ref.watch(
      footstepSoundsSourceProvider(synthizerContext),
    );
    final value = ref.watch(gameOptionsProvider);
    return value.when(
      data: (final options) {
        interfaceSoundsSource.gain.value = options.interfaceSoundsGain;
        musicSource.gain.value = options.musicGain;
        ambianceSoundsSource.gain.value = options.ambiancesGain;
        footstepSoundsSource.gain.value = options.footstepSoundsGain;
        synthizerContext.defaultPannerStrategy.value = options.pannerStrategy;
        return TransitionSoundBuilder(
          duration: const Duration(seconds: 2),
          builder: (final context) => const MainMenu(),
          sound: Assets.sounds.interface.intro,
          source: interfaceSoundsSource,
          loadingBuilder: (final context) => const LoadingScreen(),
        );
      },
      error: ErrorScreen.withPositional,
      loading: LoadingScreen.new,
    );
  }
}
