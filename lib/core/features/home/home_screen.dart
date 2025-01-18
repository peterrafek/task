import 'package:flutter/material.dart';
import 'package:task/core/features/home/widges/items_body.dart';

import '../data/model/model.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});




  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.cyan), body: itemsBody());
  }
}



























// class HomeScreen extends StatefulWidget {
//
//   const HomeScreen({super.key});

// @override
// State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
// List<Source> sources = [];
// bool loading = false;
//
// Future<List<Source>?> getData() async {
//   loading = true;
//   setState(() {});
//   String apiUrl = 'https://fakestoreapi.com/products';
//   try {
//     Response response = await Dio().get(apiUrl);
//
//     if (response.data != null) {
//       for (var json in response.data) {
//         sources.add(Source.fromJson(json));
//       }
//
//       loading = false;
//       setState(() {});
//     } else {
//       throw Exception("api response in null");
//     }
//   } catch (e) {
//     print(e.toString());
//   }
// }
//
// @override
// void initState() {
//   super.initState();
//   getData();
// }
//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.cyan),
//
//       body : itemsBody()
//
//       // body: loading == true
//       //     ? Center(child: CircularProgressIndicator())
//       //     : Padding(
//       //         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//       //         child: GridView.builder(
//       //           itemCount: sources.length,
//       //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//       //               crossAxisSpacing: 15,
//       //               mainAxisSpacing: 15,
//       //               crossAxisCount: 2),
//       //           itemBuilder: (BuildContext context, int index) {
//       //             return
//       //           },
//       //         ),
//       //       )
//
//   );
// }
