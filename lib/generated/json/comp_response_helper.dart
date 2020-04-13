import 'package:nicolelulu/model/comp_response.dart';
import 'package:nicolelulu/model/model_obj.dart';

compResponseFromJson(CompResponse data, Map<String, dynamic> json) {
	if (json['Code'] != null) {
		data.code = json['Code']?.toInt();
	}
	if (json['Msg'] != null) {
		data.msg = json['Msg']?.toString();
	}
	if (json['Obj'] != null) {
		data.obj = new List<ModelObj>();
		(json['Obj'] as List).forEach((v) {
			data.obj.add(new ModelObj().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> compResponseToJson(CompResponse entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Code'] = entity.code;
	data['Msg'] = entity.msg;
	if (entity.obj != null) {
		data['Obj'] =  entity.obj.map((v) => v.toJson()).toList();
	}
	return data;
}