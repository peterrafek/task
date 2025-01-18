import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:task/core/utils/api_service.dart';

import 'items_state.dart';

class itemsCubit extends Cubit<itemsStates> {
  itemsCubit(this.apiService) : super(itemsLoading());

  ApiService apiService;
  Map<String, dynamic> items ={}  ;
  void getItems({required String baseUrl}) async {
    emit(itemsLoading());
    try {
        items= await apiService.getItem(endPoint: baseUrl);
      emit(itemsSuccess());
    } on Exception catch (e) {
      emit(itemsFaliur());
    }
  }
}
