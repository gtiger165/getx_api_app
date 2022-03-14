import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_app/src/binding/home_bindings.dart';
import 'package:getx_api_app/src/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBindings(),
      home: const HomePage(),
    );
  }
}
