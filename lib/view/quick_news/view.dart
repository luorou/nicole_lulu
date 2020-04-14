import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'child/page.dart';
import 'state.dart';

Widget buildView(QuickNewsState state, Dispatch dispatch, ViewService viewService) {
  return SafeArea(
    child: DefaultTabController(
      length: state.titles.length,
      child: Scaffold(
        appBar: TabBar(
          isScrollable: true,
          indicatorColor: Colors.black,
          indicatorWeight: 3,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: buildTab(state),
        ),
        body: TabBarView(
          children: buildTabView(state),
        ),
      ),
    ),
  );
}

List<Widget> buildTabView(QuickNewsState state) {
  List<Widget> widgets = List();
  state.keys.forEach((element) {
    widgets.add(QuickNewsChildPage().buildPage({"id": element}));
  });
  return widgets;
}

List<Widget> buildTab(QuickNewsState state) {
  List<Widget> widgets = List();
  state.titles.forEach((element) {
    widgets.add(Tab(
      child: Text(
        element,
        style: TextStyle(inherit: true, fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14),
        softWrap: true,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        textScaleFactor: 1.0,
        maxLines: 1,
      ),
    ));
  });
  return widgets;
}
