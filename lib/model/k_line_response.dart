import 'package:nicolelulu/generated/json/base/json_convert_content.dart';
import 'package:nicolelulu/generated/json/base/json_filed.dart';
import 'package:nicolelulu/widget/k_line/entity/k_line_entity.dart';

class KLineResponse with JsonConvert<KLineResponse> {
	@JSONField(name: "Code")
	int code;
	@JSONField(name: "Msg")
	String msg;
	@JSONField(name: "Obj")
	List<KLineEntity> obj;
}
