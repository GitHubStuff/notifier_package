import 'package:flutter/material.dart';
import '../flutter_notifier_package.dart';

import 'impl_notifier.dart';

class NotifierProvider extends InheritedWidget {
  final Notifier _notifier = NotifierImpl();

  NotifierProvider({Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static Notifier of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<NotifierProvider>();
    return result._notifier;
  }
}
