import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_synthizer/flutter_synthizer.dart';

import 'gen/assets.gen.dart';
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
                gainModifier: 0.1,
              ),
              const SingleActivator(LogicalKeyboardKey.f5, control: true):
                  AdjustGainIntent(
                getSource: (final synthizerContext) => ref.read(
                  interfaceSoundsSourceProvider(synthizerContext),
                ),
                getGain: (final gameOptions) => gameOptions.interfaceSoundsGain,
                setGain: (final gameOptions, final gain) =>
                    gameOptions.interfaceSoundsGain = gain,
                gainModifier: -0.1,
              ),
              const SingleActivator(LogicalKeyboardKey.f6, shift: true):
                  AdjustGainIntent(
                getSource: (final synthizerContext) =>
                    ref.read(musicSourceProvider(synthizerContext)),
                getGain: (final gameOptions) => gameOptions.musicGain,
                setGain: (final gameOptions, final gain) =>
                    gameOptions.musicGain = gain,
                gainModifier: 0.1,
              ),
              const SingleActivator(LogicalKeyboardKey.f6, control: true):
                  AdjustGainIntent(
                getSource: (final synthizerContext) =>
                    ref.read(musicSourceProvider(synthizerContext)),
                getGain: (final gameOptions) => gameOptions.musicGain,
                setGain: (final gameOptions, final gain) =>
                    gameOptions.musicGain = gain,
                gainModifier: -0.1,
              ),
              const SingleActivator(LogicalKeyboardKey.f7, shift: true):
                  AdjustGainIntent(
                getSource: (final synthizerContext) =>
                    ref.read(ambianceSoundsSourceProvider(synthizerContext)),
                getGain: (final gameOptions) => gameOptions.ambiancesGain,
                setGain: (final gameOptions, final gain) =>
                    gameOptions.ambiancesGain = gain,
                gainModifier: 0.1,
              ),
              const SingleActivator(LogicalKeyboardKey.f7, control: true):
                  AdjustGainIntent(
                getSource: (final synthizerContext) =>
                    ref.read(ambianceSoundsSourceProvider(synthizerContext)),
                getGain: (final gameOptions) => gameOptions.ambiancesGain,
                setGain: (final gameOptions, final gain) =>
                    gameOptions.ambiancesGain = gain,
                gainModifier: -0.1,
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
                  final gain =
                      (intent.getGain(gameOptions) + intent.gainModifier)
                          .clamp(0.0, 10.0);
                  final source = intent.getSource(synthizerContext)
                    ..gain.value = gain;
                  intent.setGain(gameOptions, gain);
                  await gameOptions.save(ref);
                  if (innerContext.mounted) {
                    await innerContext.playSound(
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
