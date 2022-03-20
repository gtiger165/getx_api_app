import 'package:get/get_connect.dart';
import 'package:getx_api_app/core/utils/log_util.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    super.onInit();
    httpClient.baseUrl = "https://makeup-api.herokuapp.com/api/v1/";
    httpClient.defaultContentType = "application/json";

    // * required must return response
    httpClient.addResponseModifier((request, response) {
      LogUtil().errors("${response.bodyString}");
      return response;
    });
  }

  Future<Response<T>> getWithEndpoint<T>(String endpoint) => get(endpoint);
}
