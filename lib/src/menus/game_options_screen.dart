import 'package:backstreets_widgets/screens.dart';
import 'package:backstreets_widgets/util.dart';
import 'package:backstreets_widgets/widgets.dart';
import 'package:dart_synthizer/dart_synthizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_games/flutter_audio_games.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_synthizer/flutter_synthizer.dart';

import '../../gen/assets.gen.dart';
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
    final synthizerContext = context.synthizerContext;
    final ambianceSource = ref.watch(
      ambianceSoundsSourceProvider(synthizerContext),
    );
    final interfaceSoundsSource = ref.watch(
      interfaceSoundsSourceProvider(synthizerContext),
    );
    final musicSource = ref.watch(musicSourceProvider(synthizerContext));
    final value = ref.watch(gameOptionsProvider);
    return Cancel(
      child: SimpleScaffold(
        title: 'Game Options',
        body: value.when(
          data: (final gameOptions) => ListView(
            children: [
              GainListTile(
                title: 'Ambiances volume',
                gain: gameOptions.ambiancesGain,
                onChanged: (final value) async {
                  gameOptions.ambiancesGain = value;
                  await gameOptions.save(ref);
                },
                source: interfaceSoundsSource,
                volumeChangeSound: Assets.sounds.interface.volumeChange,
                autofocus: true,
              ),
              GainListTile(
                title: 'Interface sounds volume',
                gain: gameOptions.interfaceSoundsGain,
                onChanged: (final value) async {
                  gameOptions.interfaceSoundsGain = value;
                  await gameOptions.save(ref);
                },
                source: interfaceSoundsSource,
                volumeChangeSound: Assets.sounds.interface.volumeChange,
              ),
              GainListTile(
                title: 'Music volume',
                gain: gameOptions.musicGain,
                onChanged: (final value) async {
                  gameOptions.musicGain = value;
                  await gameOptions.save(ref);
                },
                source: musicSource,
                volumeChangeSound: Assets.sounds.interface.volumeChange,
              ),
              ListTile(
                title: const Text('Audio mode'),
                subtitle: Text(
                  synthizerContext.defaultPannerStrategy.value ==
                          PannerStrategy.stereo
                      ? 'Speakers'
                      : 'Headphones',
                ),
                onTap: () async {
                  if (gameOptions.pannerStrategy == PannerStrategy.stereo) {
                    gameOptions.pannerStrategy = PannerStrategy.hrtf;
                  } else {
                    gameOptions.pannerStrategy = PannerStrategy.stereo;
                  }
                  synthizerContext.defaultPannerStrategy.value =
                      gameOptions.pannerStrategy;
                  await gameOptions.save(ref);
                },
              ),
              ListTile(
                title: const Text('Reset Options'),
                onTap: () => confirm(
                  context: context,
                  message: 'Really reset options to their defaults?',
                  yesCallback: () async {
                    Navigator.pop(context);
                    final newOptions = GameOptions();
                    ambianceSource.gain.value = newOptions.ambiancesGain;
                    interfaceSoundsSource.gain.value =
                        newOptions.interfaceSoundsGain;
                    musicSource.gain.value = newOptions.musicGain;
                    synthizerContext.defaultPannerStrategy.value =
                        newOptions.pannerStrategy;
                    await newOptions.save(ref);
                  },
                ),
              ),
            ],
          ),
          error: ErrorListView.withPositional,
          loading: LoadingWidget.new,
        ),
      ),
    );
  }
}
