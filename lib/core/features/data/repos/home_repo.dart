import 'package:dartz/dartz.dart';
import 'package:task/core/features/data/model/model.dart';

import '../../../errores/failure.dart';

abstract class HomeRepo{
  Future<Either<failure,List<Model>>> fetchProduct();
}