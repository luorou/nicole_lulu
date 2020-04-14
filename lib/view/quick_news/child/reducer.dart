import 'package:fish_redux/fish_redux.dart';

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
  final QuickNewsChildState newState = state.clone();
  if (newState.refresh) {
    newState.mDataList.clear();
  }
  newState.mDataList.addAll(action.payload);
  return newState;
}