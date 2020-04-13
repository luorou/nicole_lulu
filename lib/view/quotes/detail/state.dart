import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';
import 'package:nicolelulu/generated/json/base/json_convert_content.dart';
import 'package:nicolelulu/model/model_obj.dart';
import 'package:nicolelulu/widget/k_line/entity/k_line_entity.dart';

class QuotesDetailState implements Cloneable<QuotesDetailState> {
  ModelObj modelObj;
  List<KLineEntity> mDataList;

  @override
  QuotesDetailState clone() {
    return QuotesDetailState()..mDataList = mDataList;
  }
}

QuotesDetailState initState(Map<String, dynamic> args) {
  QuotesDetailState state = QuotesDetailState();
  state.modelObj = args["obj"];
  state.mDataList = List();
  return state;
}
