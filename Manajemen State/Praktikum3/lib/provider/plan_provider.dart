import 'package:flutter/material.dart';
import '../models/data_layer.dart';

class PlanProvider extends InheritedNotifier<ValueNotifier<List<Plan>>> {
  const PlanProvider({
    super.key,
    required super.child,
    required super.notifier,
  });

  static ValueNotifier<List<Plan>> of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<PlanProvider>();
    assert(provider != null, 'PlanProvider tidak ditemukan!');
    return provider!.notifier!;
  }
}
