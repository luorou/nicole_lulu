import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<QuotesDetailState> buildReducer() {
  return asReducer(
    <Object, Reducer<QuotesDetailState>>{
      QuotesDetailAction.action: _onAction,
      QuotesDetailAction.returnDataList: _returnDataList,
    },
  );
}

QuotesDetailState _onAction(QuotesDetailState state, Action action) {
  final QuotesDetailState newState = state.clone();
  return newState;
}

QuotesDetailState _returnDataList(QuotesDetailState state, Action action) {
  final QuotesDetailState newState = state.clone();
  newState.mDataList = action.payload;
  return newState;
}
