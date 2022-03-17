import 'package:getx_api_app/core/extensions/base_provider.dart';
import 'package:getx_api_app/src/model/make_up_model/make_up_model.dart';

class MakeUpProvider extends BaseProvider {
  Future<List<MakeUpModel>> fetchProducts() async {
    final response = await getWithEndpoint(
      'products.json?brand=maybelline',
    );

    if (response.status.hasError) return Future.error("${response.statusText}");

    return (response.body as List).map((e) => MakeUpModel.fromMap(e)).toList();
  }
}
