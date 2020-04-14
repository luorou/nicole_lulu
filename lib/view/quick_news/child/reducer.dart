import 'package:fish_redux/fish_redux.dart';
import 'package:nicolelulu/model/news_response.dart';

import 'action.dart';
import 'state.dart';

Reducer<QuickNewsChildState> buildReducer() {
  return asReducer(
    <Object, Reducer<QuickNewsChildState>>{
      QuickNewsChildAction.returnData: _returnData,
    },
  );
}

QuickNewsChildState _returnData(QuickNewsChildState state, Action action) {
  List<NewsObj> list = action.payload;
  final QuickNewsChildState newState = state.clone();
  if (newState.refresh) {
    newState.mDataList.clear();
  }
  newState.mDataList.addAll(list);
  if (newState.refreshController.isRefresh) {
    newState.refreshController.refreshToIdle();
  }
  if (newState.refreshController.isLoading) {
    if (list.isEmpty) {
      newState.refreshController.loadNoData();
    } else {
      newState.refreshController.loadComplete();
    }
  }
  return newState;
}
