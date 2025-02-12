import 'package:backstreets_widgets/screens.dart';
import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_games/flutter_audio_games.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../gen/assets.gen.dart';
import '../menus/main_menu.dart';

/// The intro screen.
class IntroScreen extends ConsumerWidget {
  /// Create an instance.
  const IntroScreen({super.key});

  /// Build a widget.
  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final introSound = Assets.sounds.interface.intro.asSound(
      destroy: true,
      soundType: SoundType.asset,
    );
    return LoadSounds(
      sounds: [introSound],
      error: ErrorScreen.withPositional,
      loading: LoadingScreen.new,
      child: TimedBuilders(
        duration: const Duration(seconds: 2),
        builders: [
          (final builderContext) {
            builderContext.playSound(introSound);
            return const LoadingScreen();
          },
          (final builderContext) => const MainMenu(),
        ],
      ),
    );
  }
}
