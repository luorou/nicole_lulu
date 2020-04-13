import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:nicolelulu/router/aplication.dart';
import 'package:nicolelulu/router/routes.dart';

class JumpUtils {
//跳转 登录
  static jumpQuotesDetail(BuildContext context, Map<String, Object> params) async {
    await Application.navigateTo(context, Routes.quotesDetailPage, params: params, transition: TransitionType.inFromRight);
  }
}
