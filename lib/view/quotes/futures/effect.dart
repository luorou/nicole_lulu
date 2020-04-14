import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';
import 'package:nicolelulu/generated/json/base/json_convert_content.dart';
import 'package:nicolelulu/generated/json/model_obj_helper.dart';
import 'package:nicolelulu/model/comp_response.dart';
import 'package:nicolelulu/model/model_obj.dart';
import 'package:nicolelulu/net/helper/api_helper.dart';
import 'package:nicolelulu/utils/jump_utils.dart';
import 'action.dart';
import 'state.dart';

Effect<FuturesState> buildEffect() {
  return combineEffects(<Object, Effect<FuturesState>>{
    FuturesAction.action: _onAction,
    Lifecycle.initState: _initState,
    FuturesAction.onItemClick: _onItemClick,
  });
}

void _onAction(Action action, Context<FuturesState> ctx) {}

Future<void> _initState(Action action, Context<FuturesState> ctx) async {
  var res = await ApiHelper.getQueryCompByType(ctx.state.mId);
  var data = json.decode(res.toString());
  CompResponse entity = JsonConvert.fromJsonAsT(data);
  if (entity.obj != null && entity.obj.isNotEmpty) {
    ctx.dispatch(FuturesActionCreator.returnListData(entity.obj));
  }
}

Future<void> _onItemClick(Action action, Context<FuturesState> ctx) async {
  await JumpUtils.jumpQuotesDetail(ctx.context, {"id": action.payload});
}
