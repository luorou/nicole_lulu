import 'package:nicolelulu/generated/json/base/json_convert_content.dart';
import 'package:nicolelulu/generated/json/base/json_filed.dart';

import 'model_obj.dart';

class CompResponse with JsonConvert<CompResponse> {
	@JSONField(name: "Code")
	int code;
	@JSONField(name: "Msg")
	String msg;
	@JSONField(name: "Obj")
	List<ModelObj> obj;
}


