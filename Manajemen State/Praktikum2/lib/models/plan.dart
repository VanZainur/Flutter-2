import 'task.dart';

class Plan {
  final String name;
  final List<Task> tasks;

  Plan({required this.name, required this.tasks});

  String get completenessMessage {
    if (tasks.isEmpty) return 'Belum ada tugas!';
    final completedTasks = tasks.where((task) => task.complete).length;
    return 'Selesai $completedTasks dari ${tasks.length} tugas';
  }

  // Override untuk membandingkan dua objek Plan
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Plan &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          tasks == other.tasks;

  @override
  int get hashCode => name.hashCode ^ tasks.hashCode;
}
