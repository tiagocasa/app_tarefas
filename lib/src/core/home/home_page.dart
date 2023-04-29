import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tarefas/src/core/home/stores/task_board_store.dart';
import 'package:tarefas/src/core/home/widgets/custom_drawer.dart';
import 'package:tarefas/src/core/home/widgets/task_card.dart';
import 'package:tarefas/src/shared/presentation/widgets/user_image_button.dart';
import 'models/task_board_model.dart';

//final taskBoard = TaskBoardStore.getInstance();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   taskBoard.getTaskBoard();
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
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
        child: Observer(
          builder: (BuildContext context) {
            return Stack();
            //   children: [
            //     //TODO: vER NA AULA DO FLUTERAANDO O PADDING SO PRO INICIO DA LISTVIEW
            //     ListView.builder(itemBuilder:  (context, index) => )

            //     ,(
            //       future: taskBoard.taskBoardList,
            //       builder: (
            //         BuildContext context,
            //         AsyncSnapshot<List<TaskBoardModel>> snapshot,
            //       ) {
            //         if (taskBoard.isLoading) {
            //           return const Center(
            //             child: Text(
            //                 'Loading'),
            //           ); //TODO: MUDAR PRA QUELE LOADING DA UDEMY
            //         }
            //         return snapshot.data!.isEmpty
            //             ? const Center(child: Text('No Data to Display'))
            //             : Padding(
            //                 padding: const EdgeInsets.only(top: 20),
            //                 child: RefreshIndicator(
            //                   child: ListView(
            //                     padding:
            //                         const EdgeInsets.fromLTRB(0, 50, 0, 150),
            //                     physics: const AlwaysScrollableScrollPhysics(),
            //                     children: snapshot.data!.map(
            //                       (taskBoard) {
            //                         return TaskCard(board: taskBoard);
            //                       },
            //                     ).toList(),
            //                   ),
            //                   onRefresh: () {
            //                     return Future.delayed(
            //                         const Duration(seconds: 1), () {
            //                       setState(() {
            //                         //TODO: Puxar dados do banco
            //                       });
            //                     });
            //                   },
            //                 ),
            //               );
            //       },
            //     ),
            //     Align(
            //       alignment: Alignment.topCenter,
            //       child: Padding(
            //         padding: const EdgeInsets.all(8),
            //         child: SegmentedButton(
            //           segments: const [
            //             ButtonSegment(
            //               value: 0,
            //               label: Text('Todas'),
            //             ),
            //             ButtonSegment(
            //               value: 1,
            //               label: Text('Pendentes'),
            //             ),
            //             ButtonSegment(
            //               value: 2,
            //               label: Text('Concluídas'),
            //             ),
            //             ButtonSegment(
            //               value: 3,
            //               label: Text('Desativadas'),
            //             ),
            //           ],
            //           selected: const {0},
            //           onSelectionChanged: (values) {},
            //         ),
            //       ),
            //     ),
            //   ],
            // );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        label: const Text('Nova Lista'),
        onPressed: () {},
      ),
    );
  }
}
