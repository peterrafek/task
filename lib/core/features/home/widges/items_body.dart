 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/features/data/model/model.dart';

import '../../../../cubit/items_cubit.dart';
import '../../../../cubit/items_state.dart';

BlocBuilder<itemsCubit, itemsStates> itemsBody() {
  return BlocBuilder< itemsCubit, itemsStates>

    (
    builder: (context, state) {
      if (state is itemsSuccess) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else if (state is itemsSuccess) {
        BlocProvider
            .of<itemsCubit>(context)
            .items;

        return Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          height: 100,
          child: Column(
            children: [
              Expanded(
                  child: Image.network('${Model}')),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '${Model}',
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
                              'EGP${Model}',
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
                              'Review(${Model})',
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
        );;
      } else
        (state is itemsFaliur);
      {
        return Center(
          child: Text('Something went wrong please try again'),
        );
      }
    },

  );
}
