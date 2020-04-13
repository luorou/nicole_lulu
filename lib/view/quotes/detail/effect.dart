import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';
import 'package:nicolelulu/generated/json/base/json_convert_content.dart';
import 'package:nicolelulu/model/k_line_response.dart';
import 'package:nicolelulu/net/helper/api_helper.dart';
import 'action.dart';
import 'state.dart';

Effect<QuotesDetailState> buildEffect() {
  return combineEffects(<Object, Effect<QuotesDetailState>>{
    QuotesDetailAction.action: _onAction,
    Lifecycle.initState: _initState,
  });
}

void _onAction(Action action, Context<QuotesDetailState> ctx) {}

Future<void> _initState(Action action, Context<QuotesDetailState> ctx) async {
  var res = await ApiHelper.getQueryComkmByType(ctx.state.modelObj.fS);
  var data = json.decode(res.toString());
  KLineResponse entity = JsonConvert.fromJsonAsT(data);
  if (entity.obj != null && entity.obj.isNotEmpty) {
    ctx.dispatch(QuotesDetailActionCreator.returnDataList(entity.obj));
  }
}
