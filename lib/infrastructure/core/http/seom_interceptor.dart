import 'package:http_interceptor/http_interceptor.dart';

import '../../datasource/token_data_source.dart';

class SeomInterceptor extends InterceptorContract {
  SeomInterceptor();

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    final tokenDataSource = TokenDataSource.init();
    final token = tokenDataSource.token?.getOrCrash();

    data.headers['Content-Type'] = "application/json";
    data.headers['Accept'] = 'application/json; charset=UTF-8';

    if (token != null) {
      data.headers['Authorization'] = 'Bearer $token';
    }

    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    return data;
  }
}
