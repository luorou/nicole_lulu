import 'package:nicolelulu/widget/k_line/entity/k_line_entity.dart';

kLineEntityFromJson(KLineEntity data, Map<String, dynamic> json) {
	if (json['C'] != null) {
		data.close = json['C']?.toDouble();
	}
	if (json['Tick'] != null) {
		data.time = json['Tick']?.toInt();
	}
	if (json['D'] != null) {
		data.day = json['D']?.toString();
	}
	if (json['O'] != null) {
		data.open = json['O']?.toDouble();
	}
	if (json['H'] != null) {
		data.high = json['H']?.toDouble();
	}
	if (json['L'] != null) {
		data.low = json['L']?.toDouble();
	}
	if (json['A'] != null) {
		data.amount = json['A']?.toDouble();
	}
	if (json['V'] != null) {
		data.vol = json['V']?.toDouble();
	}
	if (json['change=1'] != null) {
		data.change= json['change=1']?.toDouble();
	}
	if (json['ratio=0'] != null) {
		data.ratio= json['ratio=0']?.toDouble();
	}
	return data;
}

Map<String, dynamic> kLineEntityToJson(KLineEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['C'] = entity.close;
	data['Tick'] = entity.time;
	data['D'] = entity.day;
	data['O'] = entity.open;
	data['H'] = entity.high;
	data['L'] = entity.low;
	data['A'] = entity.amount;
	data['V'] = entity.vol;
	data['change=1'] = entity.change=1;
	data['ratio=0'] = entity.ratio=0;
	return data;
}