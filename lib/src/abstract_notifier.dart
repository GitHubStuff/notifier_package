import 'package:flutter/material.dart';
import '../src/data_notifier.dart';
import '../src/provider_notifier.dart';

abstract class Notifier {
  /// Send [data] as broadcasts to listeners registered with [action].
  void notify<T>(String action, T data);

  /// Register a new callback on [action].
  Widget register<T>(String action, Widget Function(NotifierData<T>) callback);

  /// Dispose any resources that are open.
  void dispose();

  static Notifier of(BuildContext context) {
    return NotifierProvider.of(context);
  }
}
