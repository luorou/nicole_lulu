import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:fsuper/fsuper.dart';
import 'package:nicolelulu/model/news_response.dart';

import 'state.dart';

Widget buildView(QuickNewsChildState state, Dispatch dispatch, ViewService viewService) {
  List<NewsObj> dataList = state.mDataList;
  return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return buildItem(dataList[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 10,
        );
      },
      itemCount: dataList.length);
}

Widget buildItem(NewsObj newsObj) {
  return Padding(
    padding: EdgeInsets.only(left: 15, right: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FSuper(
          padding: EdgeInsets.only(left: 5, right: 5, top: 3, bottom: 3),
          backgroundColor: Colors.black12,
          corner: Corner.all(10),
          text: newsObj.t,
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            newsObj.c,
            style: TextStyle(color: Colors.redAccent),
          ),
        ),
      ],
    ),
  );
}
