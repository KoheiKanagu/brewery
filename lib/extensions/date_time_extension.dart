import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime? {
  String get formattedString =>
      this == null ? 'Never' : DateFormat('y/MM/dd HH:mm').format(this!);
}
