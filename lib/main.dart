import 'dart:async';

import 'package:brewery/controllers/brew_controller.dart';
import 'package:brewery/controllers/next_fetch_time_controller.dart';
import 'package:brewery/controllers/shared_preference_controller.dart';
import 'package:brewery/pages/home_page.dart';
import 'package:brewery/provider_logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Intl.defaultLocale = 'ja_JP';

  FlutterError.onError = (details) {
    logger.e(
      'Flutter Error',
      details.exception,
      details.stack,
    );
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    logger.e(
      'Error',
      error,
      stack,
    );
    return true;
  };

  final container = ProviderContainer(
    overrides: [
      sharedPreferences.overrideWithValue(
        await SharedPreferences.getInstance(),
      )
    ],
    observers: [
      ProviderLogger(),
    ],
  );

  Timer.periodic(
    const Duration(minutes: 1),
    (_) {
      if (container.read(nextFetchTimeController)?.isBefore(DateTime.now()) ??
          false) {
        container.read(brewController.notifier).refresh();
      }
    },
  );

  runApp(
    ProviderScope(
      parent: container,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFFD8A500),
        secondary: const Color(0xFF001A43),
      ),
      textTheme: Typography.material2021().black,
      useMaterial3: true,
    );

    return MaterialApp(
      useInheritedMediaQuery: true,
      theme: theme,
      supportedLocales: const [
        Locale('ja', 'JP'),
      ],
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
