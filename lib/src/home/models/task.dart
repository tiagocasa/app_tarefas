class Task {
  late final int? id;
  late final int? parentId;
  late final String taskName;
  late final bool isCompleted = false;

  Task({
    this.id,
    required this.parentId,
    required this.taskName,
  });

  factory Task.fromMap(Map<String, dynamic> json) => Task(
        id: json['id'],
        parentId: json['parentId'],
        taskName: json['taskName'],
      );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'parentId': parentId,
      'taskName': taskName,
    };
  }
}
