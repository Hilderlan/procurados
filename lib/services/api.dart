import 'package:dio/dio.dart';
import 'package:procurados/consts/consts_api.dart';

class Api {
  Dio _dio;

  Api() {
    _dio = Dio(BaseOptions(baseUrl: ConstsApi.apiUrl, responseType: ResponseType.json));
  }

  Future<List<dynamic>> getAllProcurados() async {
    final response = await _dio.get('/').catchError((e){
      print(e);
    });
    
    return response.data['data'];
  }
}
