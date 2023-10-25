import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/todos.dart';

class TodosController extends GetxController{
  static const String url = "https://jsonplaceholder.typicode.com/todos/";
  RxList <Todos> futureTodos = RxList<Todos>([]);
  RxBool isLoad = false.obs;


  Future<void> fetchTodos() async {
    try{
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200){
        //multiple data
        final data = json.decode(response.body);
        futureTodos.addAll(Todos.fromList(data));

        //single data
        // final data = Todos.fromJson(json.decode(response.body));
        // futureTodos.add(data);
      }else{
        throw Exception('Failed to load json');
      }
    }catch(e){
      print(e);
      Get.snackbar("Error Happen", "Error message: $e",snackPosition: SnackPosition.BOTTOM);
    }finally{
      isLoad.value = true;
    }
  }

  @override
  onInit() async {
    await fetchTodos();
    super.onInit();
  }
}