import 'package:backstreets_widgets/screens.dart';
import 'package:backstreets_widgets/util.dart';
import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_games/flutter_audio_games.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../json/game_options.dart';
import '../providers.dart';

/// The game options screen.
class GameOptionsScreen extends ConsumerWidget {
  /// Create an instance.
  const GameOptionsScreen({
    super.key,
  });

  /// Build the widget.
  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final value = ref.watch(gameOptionsProvider);
    return Cancel(
      child: SimpleScaffold(
        title: 'Game Options',
        body: value.when(
          data: (final gameOptions) => ListView(
            children: [
              DoubleListTile(
                autofocus: true,
                value: gameOptions.masterVolume,
                onChanged: (final volume) async {
                  context.soLoud.setGlobalVolume(volume);
                  gameOptions.masterVolume = volume;
                  await gameOptions.save(ref);
                },
                title: 'Master volume',
                decimalPlaces: 1,
                min: 0.0,
                max: 2.0,
                modifier: 0.1,
              ),
              ListTile(
                title: const Text('Reset Options'),
                onTap: () => resetGameOptions(context, ref),
              ),
            ],
          ),
          error: ErrorListView.withPositional,
          loading: LoadingWidget.new,
        ),
      ),
    );
  }

  /// Reset all options to their defaults.
  void resetGameOptions(final BuildContext context, final WidgetRef ref) =>
      confirm(
        context: context,
        message: 'Really reset options to their defaults?',
        yesCallback: () async {
          Navigator.pop(context);
          final newOptions = GameOptions(
            masterVolume: 1.0,
          );
          context.soLoud.setGlobalVolume(newOptions.masterVolume);
          await newOptions.save(ref);
        },
      );
}
