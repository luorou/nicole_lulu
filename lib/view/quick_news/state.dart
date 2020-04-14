import 'package:fish_redux/fish_redux.dart';

class QuickNewsState implements Cloneable<QuickNewsState> {
  List<String> keys = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"];
  List<String> titles = ["宏观", "行业", "公司", "数据", "市场", "观点", "央行", "其他", "全球", "A股", "外汇"];

  @override
  QuickNewsState clone() {
    return QuickNewsState();
  }
}

QuickNewsState initState(Map<String, dynamic> args) {
  QuickNewsState state = QuickNewsState();
  return state;
}
