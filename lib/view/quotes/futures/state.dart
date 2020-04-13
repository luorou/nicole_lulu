import 'package:fish_redux/fish_redux.dart';
import 'package:nicolelulu/model/model_obj.dart';

class FuturesState implements Cloneable<FuturesState> {
  String mId;
  List<ModelObj> mDataList;

  @override
  FuturesState clone() {
    return FuturesState()
      ..mId = mId
      ..mDataList = mDataList;
  }
}

FuturesState initState(Map<String, dynamic> args) {
  FuturesState state = FuturesState();
  state.mDataList = List();
  state.mId = args["id"];
  return state;
}
