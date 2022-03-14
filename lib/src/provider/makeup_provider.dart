import 'package:get/get_connect.dart';
import 'package:getx_api_app/src/model/make_up_model/make_up_model.dart';

class MakeUpProvider extends GetConnect {
  Future<List<MakeUpModel>> fetchProducts() async {
    final response = await get(
      'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline',
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "GET, HEAD"
      },
    );

    if (response.status.hasError) return Future.error("${response.statusText}");

    return (response.body as List).map((e) => MakeUpModel.fromMap(e)).toList();
  }
}
