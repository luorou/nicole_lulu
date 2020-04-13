import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nicolelulu/widget/k_line/k_chart_widget.dart';

import 'state.dart';

Widget buildView(QuotesDetailState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: buildBodyView(state, dispatch),
  );
}

Widget buildBodyView(QuotesDetailState state, dispatch) {
  return Scaffold(
    appBar: AppBar(
      title: Text(state.modelObj.n),
    ),
    body: Container(
      width: ScreenUtil.screenWidthDp,
      height: 400,
      child: KChartWidget(
        state.mDataList,
        isLine: false,
        mainState: MainState.BOLL,
        secondaryState: SecondaryState.NONE,
        fixedLength: 2,
        timeFormat: TimeFormat.YEAR_MONTH_DAY,
        isChinese: true,
        appBarHeight: 56,
      ),
    ),
  );
}
