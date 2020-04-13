import 'package:nicolelulu/model/k_line_response.dart';
import 'package:nicolelulu/widget/k_line/flutter_k_chart.dart';

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
      data.obj.add(KLineEntity().fromJson(v));
    });
  }
  return data;
}

Map<String, dynamic> kLineResponseToJson(KLineResponse entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Code'] = entity.code;
  data['Msg'] = entity.msg;
  if (entity.obj != null) {
    data['Obj'] = entity.obj.map((v) => v.toJson()).toList();
  }
  return data;
}

kLineObjFromJson(KLineEntity data, Map<String, dynamic> json) {
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
    if (json['A'] is int) {
      data.amount = double.parse(json['A'].toString());
    } else {
      data.amount = json['A'];
    }
  }
  if (json['V'] != null) {
    data.vol = json['V']?.toDouble();
  }
  return data;
}

Map<String, dynamic> kLineObjToJson(KLineEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['C'] = entity.close;
  data['Tick'] = entity.time;
  data['D'] = entity.day;
  data['O'] = entity.open;
  data['H'] = entity.high;
  data['L'] = entity.low;
  data['A'] = entity.amount;
  data['V'] = entity.vol;
  return data;
}
