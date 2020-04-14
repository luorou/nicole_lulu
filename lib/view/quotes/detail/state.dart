import 'package:fish_redux/fish_redux.dart';
import 'package:nicolelulu/model/model_obj.dart';
import 'package:nicolelulu/widget/k_line/entity/k_line_entity.dart';
import 'package:nicolelulu/widget/k_line/k_chart_widget.dart';

class QuotesDetailState implements Cloneable<QuotesDetailState> {
  List<KLineEntity> mDataList;
  String mId;
  SecondaryState kLineSecondaryState;
  MainState kLineMainState;

  @override
  QuotesDetailState clone() {
    return QuotesDetailState()
      ..mDataList = mDataList
      ..mId = mId
      ..kLineMainState = kLineMainState
      ..kLineSecondaryState = kLineSecondaryState;
  }
}

QuotesDetailState initState(Map<String, dynamic> args) {
  QuotesDetailState state = QuotesDetailState();
  state.mId = args["id"];
  state.mDataList = List();
  state.kLineSecondaryState = SecondaryState.KDJ;
  state.kLineMainState = MainState.BOLL;
  return state;
}
