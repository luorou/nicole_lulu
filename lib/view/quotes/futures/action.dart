import 'package:fish_redux/fish_redux.dart';
import 'package:nicolelulu/model/model_obj.dart';

enum FuturesAction { action, returnListData, onItemClick }

class FuturesActionCreator {
  static Action onAction() {
    return const Action(FuturesAction.action);
  }

  static Action returnListData(List<ModelObj> list) {
    return Action(FuturesAction.returnListData, payload: list);
  }

  static Action onItemClick(String obj) {
    return Action(FuturesAction.onItemClick, payload: obj);
  }
}
