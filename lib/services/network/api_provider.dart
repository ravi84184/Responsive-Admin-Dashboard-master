import 'package:dio/dio.dart';

import 'api_client/api_client.dart';
import 'api_client/model/general_response.dart';

/// api provider from which all api calls are defined & called.
class APIProviderIml {
  final Dio _dio = Dio();

  static APIProviderIml? _instance;
  late ApiClient _apiClient;

  APIProviderIml._() {
    _apiClient = ApiClient(_dio);
    print("APIProviderIml()");
  }

  /// get instance of api provider
  static Future<APIProviderIml> getInstance() async {
    if (_instance == null) {
      _instance = APIProviderIml._();
    }
    return _instance!;
  }

  /// api for login
  Future<GeneralResponse> sendOTPAPI({
    required String mobile,
  }) async {
    Response response;
    print("===== loginAPI Response Start =======");
    FormData data = FormData.fromMap({
      'action': "OTP_LOGIN",
      'mobile': mobile,
    });
    response = await _apiClient.post("/users.php", data: data);
    print("${response.data}");
    print("===== loginAPI Response End =======");
    return GeneralResponse.fromJson(response.data);
  }
}
