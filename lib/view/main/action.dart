import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MainAction { action, switchIndex }

class MainActionCreator {
  static Action onAction() {
    return const Action(MainAction.action);
  }

  static Action switchIndex(int index) {
    return Action(MainAction.switchIndex, payload: index);
  }
}
