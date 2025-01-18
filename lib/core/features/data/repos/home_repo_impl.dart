import 'package:dartz/dartz.dart';

import 'package:task/core/errores/failure.dart';

import 'package:task/core/features/data/model/model.dart';
import 'package:task/core/utils/api_service.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<failure, List<Model>>> fetchProduct() async {
    try {
      var data = await apiService.get(baseUrl: 'https://fakestoreapi.com/products');
      List<Model>model=[];
      for(var id in data['id'] ){
        model.add(Model.fromJson(id));
      }
      print(data);
      return right(model);

    }   catch (e){
      return left(ServerFailure());
    }
  }
}
