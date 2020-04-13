import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';

class Application {
  static Router router;

  static Future navigateTo(BuildContext context, String path,
      {Map<String, dynamic> params,
      TransitionType transition = TransitionType.native}) {
    String query = "";
    if (params != null) {
      int index = 0;
      for (var key in params.keys) {
        var value = Uri.encodeComponent(params[key].toString());
        if (index == 0) {
          query = "?";
        } else {
          query = query + "\&";
        }
        query += "$key=$value";
        index++;
      }
    }
    path = path + query;
    return router.navigateTo(context, path, transition: transition);
  }

  static Map<String, Object> transformParams(Map<String, List<String>> params) {
    Map<String, Object> map = Map();
    params.forEach((key, value) {
      map[key] = value.first;
    });
    return map;
  }
}
