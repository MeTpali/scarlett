abstract class TimeUtils {
  static String messageTime(DateTime timestamp) {
    final buf = StringBuffer();

    if (isYesterday(timestamp)) {
      buf.write('Вчера в ');
    } else if (!isToday(timestamp)) {
      buf.write('${timestamp.day}.${timestamp.month}.${timestamp.year} в ');
    }

    buf.write('${timestamp.hour}:${timestamp.minute}');

    return buf.toString();
  }

  static bool isToday(DateTime timestamp) =>
      DateTime.now().year == timestamp.year &&
      DateTime.now().day == timestamp.day &&
      DateTime.now().month == timestamp.month;

  static bool isYesterday(DateTime timestamp) {
    final yesterday = DateTime.now().add(const Duration(days: -1));
    return yesterday.year == timestamp.year &&
        yesterday.day == timestamp.day &&
        yesterday.month == timestamp.month;
  }
}
