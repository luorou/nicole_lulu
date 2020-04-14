import 'package:nicolelulu/model/news_response.dart';

newsResponseFromJson(NewsResponse data, Map<String, dynamic> json) {
	if (json['Code'] != null) {
		data.code = json['Code']?.toInt();
	}
	if (json['Msg'] != null) {
		data.msg = json['Msg']?.toString();
	}
	if (json['Obj'] != null) {
		data.obj = new List<NewsObj>();
		(json['Obj'] as List).forEach((v) {
			data.obj.add(new NewsObj().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> newsResponseToJson(NewsResponse entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Code'] = entity.code;
	data['Msg'] = entity.msg;
	if (entity.obj != null) {
		data['Obj'] =  entity.obj.map((v) => v.toJson()).toList();
	}
	return data;
}

newsObjFromJson(NewsObj data, Map<String, dynamic> json) {
	if (json['ID'] != null) {
		data.iD = json['ID']?.toInt();
	}
	if (json['C'] != null) {
		data.c = json['C']?.toString();
	}
	if (json['TG'] != null) {
		data.tG = json['TG']?.toString();
	}
	if (json['T'] != null) {
		data.t = json['T']?.toString();
	}
	return data;
}

Map<String, dynamic> newsObjToJson(NewsObj entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['ID'] = entity.iD;
	data['C'] = entity.c;
	data['TG'] = entity.tG;
	data['T'] = entity.t;
	return data;
}