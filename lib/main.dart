
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/utils/api_service.dart';
 import 'package:task/cubit/items_cubit.dart';

import 'core/features/home/home_screen.dart';


void main() {
  runApp(BlocProvider(
      create: (context){
    return itemsCubit(ApiService());
  },
  child:  MyApp()));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeScreen()


    );
  }
}