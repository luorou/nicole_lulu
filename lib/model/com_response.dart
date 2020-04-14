import 'package:nicolelulu/generated/json/base/json_convert_content.dart';
import 'package:nicolelulu/generated/json/base/json_filed.dart';

import 'model_obj.dart';

class ComResponse with JsonConvert<ComResponse> {
  @JSONField(name: "Code")
  int code;
  @JSONField(name: "Msg")
  String msg;
  @JSONField(name: "Obj")
  ModelObj obj;
}
