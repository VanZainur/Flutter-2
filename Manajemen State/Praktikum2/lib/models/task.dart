class Task {
  final String description;
  final bool complete;

  const Task({
    this.description = '',
    this.complete = false,
  });

  // Override untuk membandingkan dua objek Task
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Task &&
          runtimeType == other.runtimeType &&
          description == other.description &&
          complete == other.complete;

  @override
  int get hashCode => description.hashCode ^ complete.hashCode;
}
