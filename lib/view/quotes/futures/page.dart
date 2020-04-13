import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FuturesPage extends Page<FuturesState, Map<String, dynamic>> {
  FuturesPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FuturesState>(
                adapter: null,
                slots: <String, Dependent<FuturesState>>{
                }),
            middleware: <Middleware<FuturesState>>[
            ],);

}
