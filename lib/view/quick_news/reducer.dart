import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<QuickNewsState> buildReducer() {
  return asReducer(
    <Object, Reducer<QuickNewsState>>{
      QuickNewsAction.action: _onAction,
    },
  );
}

QuickNewsState _onAction(QuickNewsState state, Action action) {
  final QuickNewsState newState = state.clone();
  return newState;
}
