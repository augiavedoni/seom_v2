import 'package:http_interceptor/http_interceptor.dart';

class SeomInterceptor extends InterceptorContract {
  SeomInterceptor();

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    // final token = TokenLocalDataSource.instance.token;

    data.headers['Content-Type'] = "application/json";
    data.headers['Accept'] = 'application/json; charset=UTF-8';
    // data.headers['Authorization'] = 'Bearer ${token?.token}';

    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    return data;
  }
}
