import 'package:fish_redux/fish_redux.dart';
import 'package:nicolelulu/model/news_response.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class QuickNewsChildState implements Cloneable<QuickNewsChildState> {
  String mId;
  int mPageNumber;
  bool refresh;
  List<NewsObj> mDataList;
  RefreshController refreshController;

  @override
  QuickNewsChildState clone() {
    return QuickNewsChildState()
      ..mId = mId
      ..mPageNumber = mPageNumber
      ..refresh = refresh
      ..mDataList = mDataList
      ..refreshController = refreshController;
  }
}

QuickNewsChildState initState(Map<String, dynamic> args) {
  QuickNewsChildState state = QuickNewsChildState();
  state.mId = args["id"];
  state.mDataList = List();
  state.refresh = true;
  state.refreshController = RefreshController();
  state.mPageNumber = 1;
  return state;
}
