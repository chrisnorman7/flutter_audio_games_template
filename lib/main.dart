import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_games/flutter_audio_games.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/screens/intro_screen.dart';

/// Entry point.
void main() => runApp(const ProviderScope(child: MyApp()));

/// The top-level app widget.
class MyApp extends StatelessWidget {
  /// Create an instance.
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(final BuildContext context) => EnsureSemantics(
    child: SoLoudScope(
      child: MaterialApp(
        title: '__name__',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const StartWebAudio(child: IntroScreen()),
      ),
    ),
  );
}
