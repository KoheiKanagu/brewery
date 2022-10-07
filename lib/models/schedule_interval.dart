enum ScheduleInterval {
  min30(30),
  hour1(60),
  hour2(120),
  hour4(240),
  hour8(480),
  hour16(960),
  day1(1440),
  day2(2880),
  day4(5760),
  day8(11520),
  day16(23040),
  day32(46080),
  never(-1),
  ;

  const ScheduleInterval(this.minutes);

  factory ScheduleInterval.fromMinutes(int? value) =>
      ScheduleInterval.values.singleWhere(
        (e) => e.minutes == value,
        orElse: () => ScheduleInterval.hour8,
      );

  final int minutes;

  String get toFormattedString {
    if (minutes < 0) {
      return 'Never';
    }

    final duration = Duration(minutes: minutes);

    if (duration.inDays > 0) {
      return '${duration.inDays} days';
    }

    if (duration.inHours > 0) {
      return '${duration.inHours} hours';
    }

    return '${duration.inMinutes} minutes';
  }

  Duration get duration {
    return Duration(minutes: minutes);
  }
}
