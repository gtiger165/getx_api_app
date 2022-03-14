import 'package:get/instance_manager.dart';
import 'package:getx_api_app/src/controller/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
