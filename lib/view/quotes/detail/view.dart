import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nicolelulu/widget/k_line/k_chart_widget.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(QuotesDetailState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Color(0xff17212F),
    appBar: AppBar(
      backgroundColor: Color(0xff17212F),
      title: Text(state.mId),
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 25),
        child: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      dispatch(QuotesDetailActionCreator.queryComkmByType("1M"));
                    },
                    child: Text(
                      "1分钟",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      dispatch(QuotesDetailActionCreator.queryComkmByType("5M"));
                    },
                    child: Text(
                      "5分钟",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      dispatch(QuotesDetailActionCreator.queryComkmByType("15M"));
                    },
                    child: Text(
                      "15分钟",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      dispatch(QuotesDetailActionCreator.queryComkmByType("30M"));
                    },
                    child: Text(
                      "30分钟",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    _showMorePopupMenu(viewService, dispatch);
                  },
                  child: Center(
                    child: Text(
                      "更多",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    _showQuotaPopupMenu(viewService, dispatch);
                  },
                  child: Center(
                    child: Text(
                      "指标",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                flex: 1,
              )
            ],
          ),
        ),
      ),
    ),
    body: buildBodyView(state, dispatch),
  );
}

Widget buildBodyView(QuotesDetailState state, dispatch) {
  return Container(
    width: ScreenUtil.screenWidthDp,
    height: 500,
    child: KChartWidget(
      state.mDataList,
      isLine: false,
      mainState: state.kLineMainState,
      secondaryState: state.kLineSecondaryState,
      fixedLength: 2,
      timeFormat: TimeFormat.YEAR_MONTH_DAY_WITH_HOUR,
      isChinese: true,
      appBarHeight: 56,
    ),
  );
}

Future<void> _showMorePopupMenu(ViewService viewService, dispatch) async {
  var style = TextStyle(
    fontSize: 12,
    color: Colors.white,
  );
  final result = await showMenu(
      color: Colors.black54,
      context: viewService.context,
      position: RelativeRect.fromLTRB(200, 100, 0, 0),
      items: <PopupMenuItem<String>>[
        PopupMenuItem<String>(
          value: '0',
          child: GestureDetector(
            onTap: () {
              dispatch(QuotesDetailActionCreator.queryComkmByType("1H"));
            },
            child: Text(
              '1H',
              style: style,
            ),
          ),
        ),
        PopupMenuItem<String>(
          value: '1',
          child: GestureDetector(
            onTap: () {
              dispatch(QuotesDetailActionCreator.queryComkmByType("4H"));
            },
            child: Text(
              '4H',
              style: style,
            ),
          ),
        ),
        PopupMenuItem<String>(
          value: '2',
          child: GestureDetector(
            onTap: () {
              dispatch(QuotesDetailActionCreator.queryComkmByType("D"));
            },
            child: Text(
              '1天',
              style: style,
            ),
          ),
        ),
        PopupMenuItem<String>(
            value: '3',
            child: Text(
              '1周',
              style: style,
            )),
        PopupMenuItem<String>(
            value: '4',
            child: Text(
              '1月',
              style: style,
            )),
        PopupMenuItem<String>(
            value: '5',
            child: Text(
              '1年',
              style: style,
            )),
      ]);
}

Future<void> _showQuotaPopupMenu(ViewService viewService, dispatch) async {
  var style = TextStyle(
    fontSize: 12,
    color: Colors.white,
  );
  final result = await showMenu(
      color: Colors.black54,
      context: viewService.context,
      position: RelativeRect.fromLTRB(200, 100, 0, 0),
      items: <PopupMenuItem<String>>[
        PopupMenuItem<String>(
          value: '0',
          child: GestureDetector(
            onTap: () {
              dispatch(QuotesDetailActionCreator.changeKLineMainState(MainState.MA));
            },
            child: Text(
              'MA',
              style: style,
            ),
          ),
        ),
        PopupMenuItem<String>(
          value: '1',
          child: GestureDetector(
            onTap: () {
              dispatch(QuotesDetailActionCreator.changeKLineMainState(MainState.BOLL));
            },
            child: Text(
              'BOLL',
              style: style,
            ),
          ),
        ),
        PopupMenuItem<String>(
          value: '2',
          child: GestureDetector(
            onTap: () async {
              await dispatch(QuotesDetailActionCreator.changeKLineSecondaryState(SecondaryState.MACD));
            },
            child: Text(
              'MACD',
              style: style,
            ),
          ),
        ),
        PopupMenuItem<String>(
          value: '3',
          child: GestureDetector(
            onTap: () async {
              await dispatch(QuotesDetailActionCreator.changeKLineSecondaryState(SecondaryState.KDJ));
            },
            child: Text(
              'KDJ',
              style: style,
            ),
          ),
        ),
        PopupMenuItem<String>(
          value: '4',
          child: GestureDetector(
            onTap: () async {
              await dispatch(QuotesDetailActionCreator.changeKLineSecondaryState(SecondaryState.RSI));
            },
            child: Text(
              'RSI',
              style: style,
            ),
          ),
        ),
        PopupMenuItem<String>(
          value: '5',
          child: GestureDetector(
            onTap: () async {
              await dispatch(QuotesDetailActionCreator.changeKLineSecondaryState(SecondaryState.WR));
            },
            child: Text(
              'WR',
              style: style,
            ),
          ),
        ),
      ]);
}
