class TaskBoard {
  late final int? id;
  late final String name;
  late final bool isActive = true;
  final int tasks = 0;
  final int completedTasks = 0;

  TaskBoard({
    this.id,
    required this.name,
  });

  factory TaskBoard.fromMap(Map<String, dynamic> json) => TaskBoard(
        id: json['id'],
        name: json['name'],
      );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  String get query => ''' ''';
}

// TODO : colocar uma variavel de quantidade de tasks e quantidade de tasks concluidas e progress dentro do TaskBoard
// Ver o video de como criar o edit, passar a id da TaskBoard como Variavel (Mobx) para dentro de da tela de edit_task
//usar a edit para mostrar as task com aquela parent_id, quando criar uma nova task usar esse parent_id 
