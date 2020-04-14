import 'package:fish_redux/fish_redux.dart';
import 'package:nicolelulu/widget/k_line/entity/k_line_entity.dart';
import 'package:nicolelulu/widget/k_line/utils/data_util.dart';

import 'action.dart';
import 'state.dart';

Reducer<QuotesDetailState> buildReducer() {
  return asReducer(
    <Object, Reducer<QuotesDetailState>>{
      QuotesDetailAction.returnDataList: _returnDataList,
      QuotesDetailAction.changeKLineMainState: _changeKLineMainState,
      QuotesDetailAction.changeKLineSecondaryState: _changeKLineSecondaryState,
    },
  );
}

QuotesDetailState _returnDataList(QuotesDetailState state, Action action) {
  final QuotesDetailState newState = state.clone();
  List<KLineEntity> list = action.payload;
  DataUtil.calculate(list);
  newState.mDataList = action.payload;
  return newState;
}

QuotesDetailState _changeKLineMainState(QuotesDetailState state, Action action) {
  final QuotesDetailState newState = state.clone();
  newState.kLineMainState = action.payload;
  return newState;
}

QuotesDetailState _changeKLineSecondaryState(QuotesDetailState state, Action action) {
  final QuotesDetailState newState = state.clone();
  newState.kLineSecondaryState = action.payload;
  return newState;
}
