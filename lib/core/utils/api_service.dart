import 'package:dio/dio.dart';

class ApiService{

  final _baseUrl ='https://fakestoreapi.com/products';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String,dynamic>> get ({required String baseUrl})async{
    var response = await _dio.get("$_baseUrl");
    // print(response.data);
    return response.data;
}
}