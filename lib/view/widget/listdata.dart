import 'package:flutter/material.dart';

import '../../controller/todoscontroller.dart';


class ListData extends StatelessWidget {
  const ListData({
    super.key,
    required this.controller,
  });

  final TodosController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(50),
        child: Expanded(
          child: ListView.builder(
              itemCount: controller.futureTodos.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.blueGrey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("ID: ${controller.futureTodos[index].id}"),
                      const SizedBox(height: 5),
                      Text("User ID: ${controller.futureTodos[index].userId}"),
                      const SizedBox(height: 5),
                      Text("Title: ${controller.futureTodos[index].title}"),
                      const SizedBox(height: 5),
                      Text("Completed: ${controller.futureTodos[index].completed}"),
                    ],
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}