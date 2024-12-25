import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../model/source.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Source> sources = [];
  bool loading = false;

  Future<List<Source>?> getData() async {
    loading = true;
    setState(() {});
    String apiUrl = 'https://fakestoreapi.com/products';
    try {
      Response response = await Dio().get(apiUrl);

      if (response.data != null) {
        for (var json in response.data) {
          sources.add(Source.fromJson(json));
        }

        loading = false;
        setState(() {});
      } else {
        throw Exception("api response in null");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.cyan),
        body: loading == true
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: GridView.builder(
                  itemCount: sources.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                      height: 100,
                      child: Column(
                        children: [
                          Expanded(
                              child: Image.network('${sources[index].image}')),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '${sources[index].title}',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'EGP${sources[index].price}',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          '2000',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontSize: 15,
                                              color: Colors.cyan),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Review(${sources[index].rating!.rate})',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(Icons.star, color: Colors.yellow),
                                        Spacer(),
                                        CircleAvatar(
                                          backgroundColor: Colors.blue,
                                          radius: 15,
                                          child: Icon(Icons.add, size: 20),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.grey, width: 2)),
                    );
                  },
                ),
              ));
  }
}
