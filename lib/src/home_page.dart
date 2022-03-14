import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_api_app/src/controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Get Connect with Mixins"),
        ),
        body: controller.obx(
          (state) => ListView.builder(
            itemCount: state?.length,
            itemBuilder: (context, i) => ListTile(
              title: Text("Product : ${state?[i].brand}"),
            ),
          ),
          onEmpty: const Text("Empty data"),
          onError: (error) => Text("error : $error"),
          onLoading: const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
