import 'package:codelab1/binding/todosbindings.dart';
import 'package:codelab1/view/tes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: TodosPages(),
      initialBinding: TodosBindings(),
    );
  }
}