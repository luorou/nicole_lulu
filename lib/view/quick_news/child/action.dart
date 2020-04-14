import 'package:fish_redux/fish_redux.dart';
import 'package:nicolelulu/model/news_response.dart';

enum QuickNewsChildAction { netData, refresh, loadMore, returnData }

class QuickNewsChildActionCreator {
  static Action netData() {
    return const Action(QuickNewsChildAction.netData);
  }

  static Action refresh() {
    return const Action(QuickNewsChildAction.refresh);
  }

  static Action loadMore() {
    return const Action(QuickNewsChildAction.loadMore);
  }

  static Action returnData(List<NewsObj> obj) {
    return Action(QuickNewsChildAction.returnData, payload: obj);
  }
}
