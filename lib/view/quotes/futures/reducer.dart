import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FuturesState> buildReducer() {
  return asReducer(
    <Object, Reducer<FuturesState>>{
      FuturesAction.action: _onAction,
      FuturesAction.returnListData: _returnListData,
    },
  );
}

FuturesState _onAction(FuturesState state, Action action) {
  final FuturesState newState = state.clone();
  return newState;
}

FuturesState _returnListData(FuturesState state, Action action) {
  final FuturesState newState = state.clone();
  newState.mDataList = action.payload;
  return newState;
}
