import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_synthizer/flutter_synthizer.dart';

import 'gen/assets.gen.dart';
import 'src/intents/adjust_gain_direction.dart';
import 'src/intents/adjust_gain_intent.dart';
import 'src/providers.dart';
import 'src/screens/intro_screen.dart';

/// Entry point.
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

/// The top-level app widget.
class MyApp extends ConsumerWidget {
  /// Create an instance.
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(final BuildContext context, final WidgetRef ref) =>
      SynthizerScope(
        child: Builder(
          builder: (final innerContext) => MaterialApp(
            shortcuts: {
              ...WidgetsApp.defaultShortcuts,
              const SingleActivator(LogicalKeyboardKey.f5, shift: true):
                  AdjustGainIntent(
                getSource: (final synthizerContext) => ref.read(
                  interfaceSoundsSourceProvider(synthizerContext),
                ),
                getGain: (final gameOptions) => gameOptions.interfaceSoundsGain,
                setGain: (final gameOptions, final gain) =>
                    gameOptions.interfaceSoundsGain = gain,
                gainDirection: AdjustGainDirection.up,
              ),
              const SingleActivator(LogicalKeyboardKey.f5, control: true):
                  AdjustGainIntent(
                getSource: (final synthizerContext) => ref.read(
                  interfaceSoundsSourceProvider(synthizerContext),
                ),
                getGain: (final gameOptions) => gameOptions.interfaceSoundsGain,
                setGain: (final gameOptions, final gain) =>
                    gameOptions.interfaceSoundsGain = gain,
                gainDirection: AdjustGainDirection.down,
              ),
              const SingleActivator(LogicalKeyboardKey.f6, shift: true):
                  AdjustGainIntent(
                getSource: (final synthizerContext) =>
                    ref.read(musicSourceProvider(synthizerContext)),
                getGain: (final gameOptions) => gameOptions.musicGain,
                setGain: (final gameOptions, final gain) =>
                    gameOptions.musicGain = gain,
                gainDirection: AdjustGainDirection.up,
              ),
              const SingleActivator(LogicalKeyboardKey.f6, control: true):
                  AdjustGainIntent(
                getSource: (final synthizerContext) =>
                    ref.read(musicSourceProvider(synthizerContext)),
                getGain: (final gameOptions) => gameOptions.musicGain,
                setGain: (final gameOptions, final gain) =>
                    gameOptions.musicGain = gain,
                gainDirection: AdjustGainDirection.down,
              ),
              const SingleActivator(LogicalKeyboardKey.f7, shift: true):
                  AdjustGainIntent(
                getSource: (final synthizerContext) =>
                    ref.read(ambianceSoundsSourceProvider(synthizerContext)),
                getGain: (final gameOptions) => gameOptions.ambiancesGain,
                setGain: (final gameOptions, final gain) =>
                    gameOptions.ambiancesGain = gain,
                gainDirection: AdjustGainDirection.up,
              ),
              const SingleActivator(LogicalKeyboardKey.f7, control: true):
                  AdjustGainIntent(
                getSource: (final synthizerContext) =>
                    ref.read(ambianceSoundsSourceProvider(synthizerContext)),
                getGain: (final gameOptions) => gameOptions.ambiancesGain,
                setGain: (final gameOptions, final gain) =>
                    gameOptions.ambiancesGain = gain,
                gainDirection: AdjustGainDirection.down,
              ),
              const SingleActivator(LogicalKeyboardKey.f8, shift: true):
                  AdjustGainIntent(
                getSource: (final synthizerContext) =>
                    ref.read(footstepSoundsSourceProvider(synthizerContext)),
                getGain: (final gameOptions) => gameOptions.footstepSoundsGain,
                setGain: (final gameOptions, final gain) =>
                    gameOptions.footstepSoundsGain = gain,
                gainDirection: AdjustGainDirection.up,
              ),
              const SingleActivator(LogicalKeyboardKey.f8, control: true):
                  AdjustGainIntent(
                getSource: (final synthizerContext) =>
                    ref.read(footstepSoundsSourceProvider(synthizerContext)),
                getGain: (final gameOptions) => gameOptions.footstepSoundsGain,
                setGain: (final gameOptions, final gain) =>
                    gameOptions.footstepSoundsGain = gain,
                gainDirection: AdjustGainDirection.down,
              ),
            },
            actions: {
              ...WidgetsApp.defaultActions,
              AdjustGainIntent: CallbackAction<AdjustGainIntent>(
                onInvoke: (final intent) async {
                  final synthizerContext = innerContext.synthizerContext;
                  final gameOptions = await ref.read(
                    gameOptionsProvider.future,
                  );
                  final gainModifier = switch (intent.gainDirection) {
                    AdjustGainDirection.up => intent.gainModifier,
                    AdjustGainDirection.down => -intent.gainModifier,
                  };
                  final gain = (intent.getGain(gameOptions) + gainModifier)
                      .clamp(intent.minGain, intent.maxGain);
                  final source = intent.getSource(synthizerContext)
                    ..gain.value = gain;
                  intent.setGain(gameOptions, gain);
                  await gameOptions.save(ref, invalidateProvider: false);
                  if (innerContext.mounted) {
                    await innerContext.playAssetPath(
                      assetPath: Assets.sounds.interface.volumeChange,
                      source: source,
                      destroy: true,
                    );
                  }
                  return null;
                },
              ),
            },
            title: '__name__',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const IntroScreen(),
          ),
        ),
      );
}
