import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';
import 'package:nicolelulu/generated/json/base/json_convert_content.dart';
import 'package:nicolelulu/model/news_response.dart';
import 'package:nicolelulu/net/helper/api_helper.dart';
import '../action.dart';
import '../state.dart';
import 'action.dart';
import 'state.dart';

Effect<QuickNewsChildState> buildEffect() {
  return combineEffects(<Object, Effect<QuickNewsChildState>>{
    Lifecycle.initState: _initState,
    QuickNewsChildAction.refresh: _refresh,
    QuickNewsChildAction.loadMore: _loadMore,
    QuickNewsChildAction.netData: _netData,
  });
}

void _requestRefresh(Action action, Context<QuickNewsChildState> ctx) {
  ctx.state.refreshController.requestRefresh();
//  ctx.dispatch(QuickNewsChildActionCreator.refresh());
}

void _initState(Action action, Context<QuickNewsChildState> ctx) {
//  ctx.state.refreshController.requestRefresh();
  ctx.dispatch(QuickNewsChildActionCreator.refresh());
}

void _refresh(Action action, Context<QuickNewsChildState> ctx) {
  ctx.state.refresh = true;
  ctx.state.mPageNumber = 0;
  ctx.dispatch(QuickNewsChildActionCreator.netData());
}

void _loadMore(Action action, Context<QuickNewsChildState> ctx) {
  ctx.state.refresh = false;
  ctx.state.mPageNumber = ctx.state.mPageNumber + 1;
  ctx.dispatch(QuickNewsChildActionCreator.netData());
}

Future<void> _netData(Action action, Context<QuickNewsChildState> ctx) async {
  var res = await ApiHelper.getQueryNews(ctx.state.mId, ctx.state.mPageNumber);
  var data = json.decode(res.toString());
  NewsResponse entity = JsonConvert.fromJsonAsT(data);
  if (entity != null && entity.obj != null) {
    ctx.dispatch(QuickNewsChildActionCreator.returnData(entity.obj));
  }
}
