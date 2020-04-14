import 'package:nicolelulu/generated/json/base/json_convert_content.dart';
import 'package:nicolelulu/generated/json/base/json_filed.dart';

class NewsResponse with JsonConvert<NewsResponse> {
	@JSONField(name: "Code")
	int code;
	@JSONField(name: "Msg")
	String msg;
	@JSONField(name: "Obj")
	List<NewsObj> obj;
}

class NewsObj with JsonConvert<NewsObj> {
	@JSONField(name: "ID")
	int iD;
	@JSONField(name: "C")
	String c;
	@JSONField(name: "TG")
	String tG;
	@JSONField(name: "T")
	String t;
}
