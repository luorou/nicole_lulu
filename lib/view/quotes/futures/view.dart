import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fsuper/fsuper.dart';
import 'package:nicolelulu/model/model_obj.dart';
import 'package:nicolelulu/widget/real_rich_text.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(FuturesState state, Dispatch dispatch, ViewService viewService) {
  List<ModelObj> dataList = state.mDataList;
  return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return buildItem(dispatch, dataList[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 10,
        );
      },
      itemCount: dataList.length);
}

Widget buildItem(dispatch, ModelObj obj) {
  return FSuper(
    strokeWidth: 1,
    strokeColor: Colors.black12,
    corner: Corner.all(5),
    margin: EdgeInsets.only(left: 15, right: 15),
    height: 120,
    width: ScreenUtil.screenWidthDp,
    child1: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                obj.n,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Text(
                obj.fS,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              obj.p.toString(),
              style: TextStyle(color: Colors.redAccent, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: RealRichText([
                    TextSpan(
                      text: "最高 ",
                      style: TextStyle(color: Colors.black54, fontSize: 12, decoration: TextDecoration.none),
                    ),
                    TextSpan(
                      text: obj.h.toString(),
                      style: TextStyle(color: Colors.black54, fontSize: 12, decoration: TextDecoration.none),
                    ),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: RealRichText([
                    TextSpan(
                      text: "最低 ",
                      style: TextStyle(color: Colors.black54, fontSize: 12, decoration: TextDecoration.none),
                    ),
                    TextSpan(
                      text: obj.l.toString(),
                      style: TextStyle(color: Colors.black54, fontSize: 12, decoration: TextDecoration.none),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              children: <Widget>[
                RealRichText([
                  TextSpan(
                    text: "今开 ",
                    style: TextStyle(color: Colors.black54, fontSize: 12, decoration: TextDecoration.none),
                  ),
                  TextSpan(
                    text: obj.o.toString(),
                    style: TextStyle(color: Colors.black54, fontSize: 12, decoration: TextDecoration.none),
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: RealRichText([
                    TextSpan(
                      text: "昨收 ",
                      style: TextStyle(color: Colors.black54, fontSize: 12, decoration: TextDecoration.none),
                    ),
                    TextSpan(
                      text: obj.yC.toString(),
                      style: TextStyle(color: Colors.black54, fontSize: 12, decoration: TextDecoration.none),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    child1Alignment: Alignment.center,
    onClick: (){
      dispatch(FuturesActionCreator.onItemClick(obj.fS));
    },
  );
}
