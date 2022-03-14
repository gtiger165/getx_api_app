import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_api_app/src/model/make_up_model/make_up_model.dart';
import 'package:getx_api_app/src/provider/makeup_provider.dart';

class HomeController extends GetxController with StateMixin<List<MakeUpModel>> {
  final MakeUpProvider _provider = MakeUpProvider();

  @override
  void onInit() {
    super.onInit();
    _provider.fetchProducts().then(
          (value) => change(
            value,
            status: RxStatus.success(),
          ),
          onError: (error) => change(
            null,
            status: RxStatus.error(error.toString()),
          ),
        );
  }
}
