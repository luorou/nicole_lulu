import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nicolelulu/view/quick_news/page.dart';
import 'package:nicolelulu/view/quotes/page.dart';
import 'package:nicolelulu/view/user_center/page.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: IndexedStack(
      children: <Widget>[
        QuotesPage().buildPage(null),
        QuickNewsPage().buildPage(null),
        UserCenterPage().buildPage(null)
      ],
      index: state.index,
    ),
    bottomNavigationBar: BottomNavigationBar(
      fixedColor: Colors.black,
      unselectedFontSize: 16.0,
      selectedFontSize: 18.0,
      unselectedLabelStyle: TextStyle(inherit: true, fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 16),
      iconSize: 0.0,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('行情')),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            title: Text(
              "快讯",
            )),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled), title: Text('我的')),
      ],
      currentIndex: state.index,
      onTap: (int index) {
        dispatch(MainActionCreator.switchIndex(index));
      },
    ),
  );
}
