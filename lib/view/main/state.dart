import 'package:fish_redux/fish_redux.dart';

class MainState implements Cloneable<MainState> {
  var index = 0;

  @override
  MainState clone() {
    return MainState();
  }
}

MainState initState(Map<String, dynamic> args) {
  return MainState();
}
