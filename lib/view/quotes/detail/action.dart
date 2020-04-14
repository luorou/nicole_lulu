import 'package:fish_redux/fish_redux.dart';
import 'package:nicolelulu/widget/k_line/entity/k_line_entity.dart';
import 'package:nicolelulu/widget/k_line/k_chart_widget.dart';

enum QuotesDetailAction {
  queryComkmByType,
  returnDataList,
  changeTimeZoneQuery,
  changeKLineSecondaryState,
  changeKLineMainState
}

class QuotesDetailActionCreator {
  static Action returnDataList(List<KLineEntity> list) {
    return Action(QuotesDetailAction.returnDataList, payload: list);
  }

  static Action changeKLineSecondaryState(SecondaryState state) {
    return Action(QuotesDetailAction.changeKLineSecondaryState, payload: state);
  }

  static Action changeKLineMainState(MainState state) {
    return Action(QuotesDetailAction.changeKLineMainState, payload: state);
  }

  static Action queryComkmByType(String type) {
    return Action(QuotesDetailAction.queryComkmByType, payload: type);
  }
}
