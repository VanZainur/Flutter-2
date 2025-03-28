import 'package:flutter/material.dart';
import './views/plan_screen.dart';
import './models/data_layer.dart';
import './provider/plan_provider.dart';

void main() => runApp(const MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: PlanProvider(
        notifier: ValueNotifier(Plan(name: 'Master Plan', tasks: [])),
        child: const PlanScreen(),
      ),
    );
  }
}
