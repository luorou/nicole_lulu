import '../method_url.dart';
import '../net_hard.dart';

class ApiHelper {
  static Future getQueryComByType(String id) async {
    Map<String, dynamic> map = new Map();
    map["withks"] = 0;
    map["withticks"] = 0;
    map["symbol"] = id;
    var res = await NetHard.getRequest(UrlMethod.KEY_QUERY_COM, queryParameters: map);
    return res;
  }

  static Future getQueryCompByType(String id) async {
    Map<String, dynamic> map = new Map();
    map["p"] = "1";
    map["ps"] = "50";
    map["rout"] = id;
    map["sort"] = "ZF";
    map["sorttype"] = "0";
    map["where"] = "";
    var res = await NetHard.getRequest(UrlMethod.KEY_QUERY_COMP, queryParameters: map);
    return res;
  }

  static Future getQueryComkmByType(String id, String period) async {
    Map<String, dynamic> map = new Map();
    map["period"] = period;
    map["pidx"] = "1";
    map["psize"] = 500;
    map["symbol"] = id;
    map["withlast"] = "1";
    var res = await NetHard.getRequest(UrlMethod.KEY_QUERY_COMKM, queryParameters: map);
    return res;
  }

  static Future getQueryNews(String id, int pageNumber) async {
    Map<String, dynamic> map = new Map();
    map["pidx"] = pageNumber;
    map["ps"] = 10;
    map["types"] = id;
    var res = await NetHard.getRequest(UrlMethod.KEY_QUERY_QNEWS, queryParameters: map);
    return res;
  }
}
