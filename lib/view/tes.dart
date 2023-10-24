
import 'package:codelab1/controller/todoscontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/listdata.dart';

class TodosPages extends GetView<TodosController> {
  const TodosPages({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() =>
        Center(
          child: controller.isLoad.value?
          ListData(controller: controller):
          const CircularProgressIndicator(
              strokeWidth: 5),
        )
      ),
    );
  }
}

