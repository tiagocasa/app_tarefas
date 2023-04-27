import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:tarefas/src/home/stores/task_store.dart';
import 'package:tarefas/src/home/widgets/task_item.dart';
import 'package:tarefas/src/shared/widgets/user_image_button.dart';

import '../shared/services/database_helper.dart';
import 'models/task.dart';

class EditTaskBoardPage extends StatefulWidget {
  const EditTaskBoardPage({super.key});

  @override
  State<EditTaskBoardPage> createState() => _EditTaskBoardPage();
}

class _EditTaskBoardPage extends State<EditTaskBoardPage> {
  @override
  Widget build(BuildContext context) {
    final taskStore = Provider.of<TaskStore>(context);
    final parentId = taskStore.selectedTaskId;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Tarefas'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserImageButton(),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            FutureBuilder<List<Task>>(
              future: DatabaseHelper.instance.getTasksItens(parentId),
              builder: (
                BuildContext context,
                AsyncSnapshot<List<Task>> snapshot,
              ) {
                if (!snapshot.hasData) {
                  return const Text(
                      'Loading'); //TODO: MUDAR PRA QUELE LOADING DA UDEMY
                }
                return snapshot.data!.isEmpty
                    ? const Center(child: Text('No Data to Display'))
                    : ListView(
                        children: snapshot.data!.map(
                          (task) {
                            return TaskItem(task: task);
                          },
                        ).toList(),
                      );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Título da lista',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        //fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        label: const Text('Novo item'),
        onPressed: () async {
          await DatabaseHelper.instance.addTask(
            Task(
              parentId: parentId,
              taskName: 'task item',
            ),
          ); //Criar caixinha com textfield Inserir cancelar
          setState(() {});
        },
      ),
    );
  }
}
