import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum QuickNewsAction { action }

class QuickNewsActionCreator {
  static Action onAction() {
    return const Action(QuickNewsAction.action);
  }
}
