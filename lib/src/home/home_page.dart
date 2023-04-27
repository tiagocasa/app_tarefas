import 'package:flutter/material.dart';
import 'package:tarefas/src/home/widgets/custom_drawer.dart';
import 'package:tarefas/src/home/widgets/task_card.dart';
import 'package:tarefas/src/shared/widgets/user_image_button.dart';
import '../shared/services/database_helper.dart';
import 'models/task_board.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: Stack(
          children: [
            //TODO: vER NA AULA DO FLUTERAANDO O PADDING SO PRO INICIO DA LISTVIEW
            FutureBuilder<List<TaskBoard>>(
              future: DatabaseHelper.instance.getTasks(),
              builder: (
                BuildContext context,
                AsyncSnapshot<List<TaskBoard>> snapshot,
              ) {
                if (!snapshot.hasData) {
                  return const Text(
                      'Loading'); //TODO: MUDAR PRA QUELE LOADING DA UDEMY
                }
                return snapshot.data!.isEmpty
                    ? const Center(child: Text('No Data to Display'))
                    : ListView(
                        children: snapshot.data!.map(
                          (taskBoard) {
                            return TaskCard(board: taskBoard);
                          },
                        ).toList(),
                      );
              },
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SegmentedButton(
                  segments: const [
                    ButtonSegment(
                      value: 0,
                      label: Text('Todas'),
                    ),
                    ButtonSegment(
                      value: 1,
                      label: Text('Pendentes'),
                    ),
                    ButtonSegment(
                      value: 2,
                      label: Text('Concluídas'),
                    ),
                    ButtonSegment(
                      value: 3,
                      label: Text('Desativadas'),
                    ),
                  ],
                  selected: const {0},
                  onSelectionChanged: (values) {},
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        label: const Text('Nova Lista'),
        onPressed: () async {
          await DatabaseHelper.instance.add(
            TaskBoard(name: 'Teste'),
          ); //Criar caixinha com textfield Inserir cancelar
          setState(() {});
        },
      ),
    );
  }
}
