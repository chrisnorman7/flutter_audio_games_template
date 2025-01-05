import 'package:backstreets_widgets/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_games/flutter_audio_games.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../gen/assets.gen.dart';
import 'game_options_screen.dart';

/// The main menu for the game.
class MainMenu extends ConsumerWidget {
  /// Create an instance.
  const MainMenu({super.key});

  /// Build the widget.
  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final music = Assets.sounds.music.mainTheme.asSound(
      destroy: false,
      soundType: SoundType.asset,
      looping: true,
    );
    final activateItemSound = Assets.sounds.menus.activate.asSound(
      destroy: false,
      soundType: SoundType.asset,
    );
    final selectItemSound = Assets.sounds.menus.select.asSound(
      destroy: false,
      soundType: SoundType.asset,
    );
    final playGame = Assets.sounds.menus.voices.playGame.asSound(
      destroy: false,
      soundType: SoundType.asset,
    );
    final gameOptions = Assets.sounds.menus.voices.gameOptions.asSound(
      destroy: false,
      soundType: SoundType.asset,
    );
    final visitGitHub = Assets.sounds.menus.voices.visitGitHub.asSound(
      destroy: false,
      soundType: SoundType.asset,
    );
    return ProtectSounds(
      sounds: [
        selectItemSound,
        activateItemSound,
        playGame,
        gameOptions,
        visitGitHub,
      ],
      child: AudioGameMenu(
        title: 'Main Menu',
        menuItems: [
          AudioGameMenuItem(
            title: 'Play game',
            onActivate: (final innerContext) {
              // TODO: Code me.
            },
            earcon: playGame,
          ),
          AudioGameMenuItem(
            title: 'Game options',
            onActivate: (final innerContext) => innerContext.pushWidgetBuilder(
              (final context) => const GameOptionsScreen(),
            ),
            earcon: gameOptions,
          ),
          AudioGameMenuItem(
            title: 'Visit chrisnorman7 on GitHub',
            onActivate: (final innerContext) =>
                launchUrl(Uri.parse('https://github.com/chrisnorman7')),
            earcon: visitGitHub,
          ),
        ],
        selectItemSound: selectItemSound,
        activateItemSound: activateItemSound,
        music: music,
        musicFadeInTime: const Duration(seconds: 1),
        musicFadeOutTime: const Duration(seconds: 2),
      ),
    );
  }
}
