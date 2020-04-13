import 'package:fish_redux/fish_redux.dart';

class QuotesState implements Cloneable<QuotesState> {
  List<String> keys = ["CNST", "CNETF", "USST", "HKST", "GBFSB", "GBCFD", "GBFT", "CNFT", "GBDC", "GBIDX"];
  List<String> titles = ["沪深", "50ETF", "美股", "港股", "外汇", "CFD", "国际期货", "国内期货", "数字货币", "全球股指"];

  @override
  QuotesState clone() {
    return QuotesState()
      ..titles = titles
      ..keys = keys;
  }
}

QuotesState initState(Map<String, dynamic> args) {
  return QuotesState();
}
