import 'dart:async';

import 'package:brewery/pages/home_page.dart';
import 'package:brewery/utils/my_logger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:talker_flutter/talker_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    logger.handle(
      TalkerException(
        Exception(details.exceptionAsString()),
        message: details.context?.toString(),
        stackTrace: details.stack,
        logLevel: LogLevel.error,
      ),
    );
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    logger.handle(
      TalkerException(
        Exception(error.toString()),
        message: error.toString(),
        stackTrace: stack,
        logLevel: LogLevel.error,
      ),
    );
    return true;
  };

  runApp(
    ProviderScope(observers: [talkerRiverpodObserver], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = CupertinoThemeData(
      brightness: Brightness.light,
      primaryColor: const Color(0xFFD8A500),
    );

    return CupertinoApp(
      theme: theme,
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
