import 'package:codelab1/controller/todoscontroller.dart';
import 'package:get/get.dart';

class TodosBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(TodosController());
  }
}