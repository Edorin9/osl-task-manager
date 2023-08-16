import 'package:intl/intl.dart';

extension StringX on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}

extension DateTimeX on DateTime {
  String get displayFormat => DateFormat('MMM d, yyyy | EEEE').format(this);
}
