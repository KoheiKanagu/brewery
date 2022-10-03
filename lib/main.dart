import 'package:brewery/pages/home_page.dart';
import 'package:brewery/provider_logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

void main() {
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

  runApp(
    ProviderScope(
      observers: [
        ProviderLogger(),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData.from(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00A5BF)),
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
    );
  }
}
