import 'package:backstreets_widgets/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_games/flutter_audio_games.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_synthizer/flutter_synthizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../gen/assets.gen.dart';
import '../providers.dart';
import 'game_options_screen.dart';

/// The main menu for the game.
class MainMenu extends ConsumerWidget {
  /// Create an instance.
  const MainMenu({
    super.key,
  });

  /// Build the widget.
  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final synthizerContext = context.synthizerContext;
    final interfaceSoundsSource =
        ref.watch(interfaceSoundsSourceProvider(synthizerContext));
    final musicSource = ref.watch(musicSourceProvider(synthizerContext));
    return AudioGameMenu(
      title: 'Main Menu',
      menuItems: [
        AudioGameMenuItem(
          title: 'Play game',
          onActivate: (final innerContext) {
            // TODO: Code me.
          },
        ),
        AudioGameMenuItem(
          title: 'Game options',
          onActivate: (final innerContext) => innerContext
              .pushWidgetBuilder((final context) => const GameOptionsScreen()),
        ),
        AudioGameMenuItem(
          title: 'Visit chrisnorman7 on GitHub',
          onActivate: (final innerContext) =>
              launchUrl(Uri.parse('https://github.com/chrisnorman7')),
        ),
      ],
      interfaceSoundsSource: interfaceSoundsSource,
      musicSource: musicSource,
      activateItemSound: Assets.sounds.menus.activate.asSound(),
      music: Assets.sounds.music.mainTheme.asSound(),
      musicFadeIn: 1.0,
      musicFadeOut: 2.0,
      selectItemSound: Assets.sounds.menus.select.asSound(),
    );
  }
}
