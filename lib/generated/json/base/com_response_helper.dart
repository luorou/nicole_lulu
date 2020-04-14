import 'package:nicolelulu/model/com_response.dart';
import 'package:nicolelulu/model/model_obj.dart';

compResponseFromJson(ComResponse data, Map<String, dynamic> json) {
  if (json['Code'] != null) {
    data.code = json['Code']?.toInt();
  }
  if (json['Msg'] != null) {
    data.msg = json['Msg']?.toString();
  }
  if (json['Obj'] != null) {
    data.obj = ModelObj().fromJson(json['Obj']);
  }
  return data;
}

Map<String, dynamic> compResponseToJson(ComResponse entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['Code'] = entity.code;
  data['Msg'] = entity.msg;
  if (entity.obj != null) {
    data['Obj'] = entity.obj.toJson();
  }
  return data;
}
