import '../method_url.dart';
import '../net_hard.dart';

class ApiHelper {
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


  static Future getQueryComkmByType(String id) async {
    Map<String, dynamic> map = new Map();
    map["period"] = "D";
    map["pidx"] = "1";
    map["psize"] = 500;
    map["symbol"] = id;
    map["withlast"] = "1";
    var res = await NetHard.getRequest(UrlMethod.KEY_QUERY_COMKM, queryParameters: map);
    return res;
  }
}
