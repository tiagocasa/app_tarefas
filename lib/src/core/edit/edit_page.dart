import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarefas/src/core/home/stores/task_board_store.dart';
import 'package:tarefas/src/core/home/widgets/task_item.dart';
import 'package:tarefas/src/shared/services/repository/task_board_repository.dart';
import 'package:tarefas/src/shared/services/repository/task_item_repository.dart';
import 'package:tarefas/src/shared/widgets/user_image_button.dart';
import '../home/models/task_item_model.dart';

class EditTaskBoardPage extends StatefulWidget {
  const EditTaskBoardPage({super.key});

  @override
  State<EditTaskBoardPage> createState() => _EditTaskBoardPage();
}

class _EditTaskBoardPage extends State<EditTaskBoardPage> {
  callback(taskId) {
    print(taskId);
  }

  @override
  Widget build(BuildContext context) {
    //final taskStore = Provider.of<TaskStore>(context);
    //final parentId = taskStore.selectedTaskId;
    final theme = Theme.of(context);
    //String taskTitle = taskStore.selectedTaskBoard.getName;
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
      body: RefreshIndicator(
        onRefresh: () {
          return Future.delayed(const Duration(seconds: 1), () {
            setState(() {
              //TODO: Puxar dados do banco
            });
          });
        },
        child: Center(
            // child: Stack(
            //   children: [
            //     FutureBuilder<List<Task>>(
            //       future: taskItemRepository.getTasksItens(parentId),
            //       builder: (
            //         BuildContext context,
            //         AsyncSnapshot<List<Task>> snapshot,
            //       ) {
            //         if (!snapshot.hasData) {
            //           return const Text(
            //               'Loading'); //TODO: MUDAR PRA QUELE LOADING DA UDEMY
            //         }
            //         return snapshot.data!.isEmpty
            //             ? const Center(child: Text('No Data to Display'))
            //             : ListView(
            //                 padding: EdgeInsets.fromLTRB(0, 100, 0, 150),
            //                 children: snapshot.data!.map(
            //                   (task) {
            //                     return TaskItem(
            //                       task: task,
            //                       callbackFunction: callback,
            //                     );
            //                   },
            //                 ).toList(),
            //               );
            //       },
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(20),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         children: [
            //           Center(
            //             child: TextFormField(
            //               initialValue: taskTitle,
            //               style: theme.textTheme.titleLarge?.copyWith(
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               onChanged: (value) {
            //                 taskTitle = value;
            //               },
            //               // onTapOutside: (value) async {
            //               //   FocusScope.of(context).unfocus();
            //               //   setState(() {
            //               //     //taskStore.selectedTaskBoard.name = taskTitle;
            //               //     print('teste');
            //               //   });
            //               //   await taskBoardRepository.update(
            //               //     taskStore.selectedTaskBoard,
            //               //   );
            //               // },
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        label: const Text('Novo item'),
        onPressed: () {},
        // onPressed: () async {
        //   await taskItemRepository.add(
        //     Task(
        //       parentId: parentId,
        //       taskName: 'task item',
        //     ),
        //   ); //Criar caixinha com textfield Inserir cancelar
        //   //setState(() {});
        // },
      ),
    );
  }
}
