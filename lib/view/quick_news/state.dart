import 'package:fish_redux/fish_redux.dart';

class QuickNewsState implements Cloneable<QuickNewsState> {

  @override

  QuickNewsState clone() {
    return QuickNewsState();
  }
}

QuickNewsState initState(Map<String, dynamic> args) {
  return QuickNewsState();
}
