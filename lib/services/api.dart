import 'package:dio/dio.dart';

class Api {
  Dio _dio;

  Api() {
    _dio = Dio(BaseOptions(baseUrl: '', responseType: ResponseType.json));
  }

  Future<Map<String, dynamic>> getAllProcurados() async {
    final response = await _dio.get('/').catchError((e){
      print(e);
    });
    print(response);

    return response.data;
  }
}
