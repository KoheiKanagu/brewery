import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';

final logger = TalkerFlutter.init();

/// [Riverpod] logger on [Talker] base
final talkerRiverpodObserver = TalkerRiverpodObserver(talker: logger);
