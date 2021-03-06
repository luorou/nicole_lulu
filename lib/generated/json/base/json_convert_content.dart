// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:nicolelulu/widget/k_line/entity/k_line_entity.dart';
import 'package:nicolelulu/generated/json/k_line_entity_helper.dart';
import 'package:nicolelulu/model/com_response.dart';
import 'package:nicolelulu/generated/json/com_response_helper.dart';
import 'package:nicolelulu/model/comp_response.dart';
import 'package:nicolelulu/generated/json/comp_response_helper.dart';
import 'package:nicolelulu/model/news_response.dart';
import 'package:nicolelulu/generated/json/news_response_helper.dart';
import 'package:nicolelulu/model/k_line_response.dart';
import 'package:nicolelulu/generated/json/k_line_response_helper.dart';
import 'package:nicolelulu/model/model_obj.dart';
import 'package:nicolelulu/generated/json/model_obj_helper.dart';

class JsonConvert<T> {
  T fromJson(Map<String, dynamic> json) {
    return _getFromJson<T>(runtimeType, this, json);
  }

  Map<String, dynamic> toJson() {
    return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
    switch (type) {
      case KLineEntity:
        return kLineEntityFromJson(data as KLineEntity, json) as T;
      case ComResponse:
        return comResponseFromJson(data as ComResponse, json) as T;
      case CompResponse:
        return compResponseFromJson(data as CompResponse, json) as T;
      case NewsResponse:
        return newsResponseFromJson(data as NewsResponse, json) as T;
      case NewsObj:
        return newsObjFromJson(data as NewsObj, json) as T;
      case KLineResponse:
        return kLineResponseFromJson(data as KLineResponse, json) as T;
      case ModelObj:
        return modelObjFromJson(data as ModelObj, json) as T;
    }
    return data as T;
  }

  static _getToJson<T>(Type type, data) {
    switch (type) {
      case KLineEntity:
        return kLineEntityToJson(data as KLineEntity);
      case ComResponse:
        return comResponseToJson(data as ComResponse);
      case CompResponse:
        return compResponseToJson(data as CompResponse);
      case NewsResponse:
        return newsResponseToJson(data as NewsResponse);
      case NewsObj:
        return newsObjToJson(data as NewsObj);
      case KLineResponse:
        return kLineResponseToJson(data as KLineResponse);
      case ModelObj:
        return modelObjToJson(data as ModelObj);
    }
    return data as T;
  }

  //Go back to a single instance by type
  static _fromJsonSingle(String type, json) {
    switch (type) {
      case 'KLineEntity':
        return KLineEntity().fromJson(json);
      case 'ComResponse':
        return ComResponse().fromJson(json);
      case 'CompResponse':
        return CompResponse().fromJson(json);
      case 'NewsResponse':
        return NewsResponse().fromJson(json);
      case 'NewsObj':
        return NewsObj().fromJson(json);
      case 'KLineResponse':
        return KLineResponse().fromJson(json);
      case 'ModelObj':
        return ModelObj().fromJson(json);
    }
    return null;
  }

  //empty list is returned by type
  static _getListFromType(String type) {
    switch (type) {
      case 'KLineEntity':
        return List<KLineEntity>();
      case 'ComResponse':
        return List<ComResponse>();
      case 'CompResponse':
        return List<CompResponse>();
      case 'NewsResponse':
        return List<NewsResponse>();
      case 'NewsObj':
        return List<NewsObj>();
      case 'KLineResponse':
        return List<KLineResponse>();
      case 'ModelObj':
        return List<ModelObj>();
    }
    return null;
  }

  static M fromJsonAsT<M>(json) {
    String type = M.toString();
    if (json is List && type.contains("List<")) {
      String itemType = type.substring(5, type.length - 1);
      List tempList = _getListFromType(itemType);
      json.forEach((itemJson) {
        tempList.add(_fromJsonSingle(type.substring(5, type.length - 1), itemJson));
      });
      return tempList as M;
    } else {
      return _fromJsonSingle(M.toString(), json) as M;
    }
  }
}
