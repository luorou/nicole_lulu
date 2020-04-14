import 'package:nicolelulu/model/k_line_response.dart';
import 'package:nicolelulu/widget/k_line/entity/k_line_entity.dart';

kLineResponseFromJson(KLineResponse data, Map<String, dynamic> json) {
	if (json['Code'] != null) {
		data.code = json['Code']?.toInt();
	}
	if (json['Msg'] != null) {
		data.msg = json['Msg']?.toString();
	}
	if (json['Obj'] != null) {
		data.obj = new List<KLineEntity>();
		(json['Obj'] as List).forEach((v) {
			data.obj.add(new KLineEntity().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> kLineResponseToJson(KLineResponse entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Code'] = entity.code;
	data['Msg'] = entity.msg;
	if (entity.obj != null) {
		data['Obj'] =  entity.obj.map((v) => v.toJson()).toList();
	}
	return data;
}