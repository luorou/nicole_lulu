import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<QuickNewsState> buildEffect() {
  return combineEffects(<Object, Effect<QuickNewsState>>{
    QuickNewsAction.action: _onAction,
  });
}

void _onAction(Action action, Context<QuickNewsState> ctx) {
}
