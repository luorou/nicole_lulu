import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fsuper/fsuper.dart';
import 'package:nicolelulu/model/news_response.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(QuickNewsChildState state, Dispatch dispatch, ViewService viewService) {
  List<NewsObj> dataList = state.mDataList;
  return SmartRefresher(
    enablePullDown: true,
    enablePullUp: true,
    header: WaterDropHeader(),
    footer: CustomFooter(
      builder: (BuildContext context, LoadStatus mode) {
        Widget body;
        if (mode == LoadStatus.idle) {
          body = Text("上拉加载");
        } else if (mode == LoadStatus.loading) {
          body = CupertinoActivityIndicator();
        } else if (mode == LoadStatus.failed) {
          body = Text("加载失败！点击重试！");
        } else if (mode == LoadStatus.canLoading) {
          body = Text("松手,加载更多!");
        } else {
          body = Text("没有更多数据了!");
        }
        return Container(
          height: 55.0,
          child: Center(child: body),
        );
      },
    ),
    controller: state.refreshController,
    onRefresh: () {
      dispatch(QuickNewsChildActionCreator.refresh());
    },
    onLoading: () {
      dispatch(QuickNewsChildActionCreator.loadMore());
    },
    child: ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return buildItem(dataList[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 10,
        );
      },
      itemCount: dataList.length,
    ),
  );
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
