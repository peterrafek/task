import 'package:dio/dio.dart';

class ApiService{

  final baseUrl ='https://fakestoreapi.com/products';
  late Dio dio;

  ApiService();

  Future<Map<String,dynamic>> getItem ({required String endPoint})async{
    var response = await dio.get("$endPoint$endPoint");
    print(response.data);
    return response.data;
}
}