import 'package:fish_redux/fish_redux.dart';
import 'package:nicolelulu/model/news_response.dart';

class QuickNewsChildState implements Cloneable<QuickNewsChildState> {
  String mId;
  int mPageNumber;
  bool refresh;
  List<NewsObj> mDataList;

  @override
  QuickNewsChildState clone() {
    return QuickNewsChildState()
      ..mId = mId
      ..mPageNumber = mPageNumber
      ..refresh = refresh
      ..mDataList = mDataList;
  }
}

QuickNewsChildState initState(Map<String, dynamic> args) {
  QuickNewsChildState state = QuickNewsChildState();
  state.mId = args["id"];
  state.mDataList = List();
  state.refresh = true;
  state.mPageNumber = 1;
  return state;
}
