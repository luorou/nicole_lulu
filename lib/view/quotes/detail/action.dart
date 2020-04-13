import 'package:fish_redux/fish_redux.dart';
import 'package:nicolelulu/widget/k_line/entity/k_line_entity.dart';

//TODO replace with your own action
enum QuotesDetailAction { action, returnDataList }

class QuotesDetailActionCreator {
  static Action onAction() {
    return const Action(QuotesDetailAction.action);
  }

  static Action returnDataList(List<KLineEntity> list) {
    return Action(QuotesDetailAction.returnDataList, payload: list);
  }
}
