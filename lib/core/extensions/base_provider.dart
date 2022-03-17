import 'package:get/get_connect.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    super.onInit();
    httpClient.baseUrl = "https://makeup-api.herokuapp.com/api/v1/";
  }

  Future<Response<T>> getWithEndpoint<T>(String endpoint) => get(endpoint);
}
