import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class QuickNewsPage extends Page<QuickNewsState, Map<String, dynamic>> {
  QuickNewsPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<QuickNewsState>(
                adapter: null,
                slots: <String, Dependent<QuickNewsState>>{
                }),
            middleware: <Middleware<QuickNewsState>>[
            ],);

}
