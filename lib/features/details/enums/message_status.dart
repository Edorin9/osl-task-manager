import 'package:flutter/material.dart';

enum MessageStatus {
  none,
  success,
  failure,
}

extension MessageStatusX on MessageStatus {
  Color? get color {
    switch (this) {
      case MessageStatus.success:
        return Colors.green.shade700;
      case MessageStatus.failure:
        return Colors.red.shade700;
      case MessageStatus.none:
        return null;
    }
  }
}
