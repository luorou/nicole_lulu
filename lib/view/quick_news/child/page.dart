import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class QuickNewsChildPage extends Page<QuickNewsChildState, Map<String, dynamic>> {
  QuickNewsChildPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<QuickNewsChildState>(
                adapter: null,
                slots: <String, Dependent<QuickNewsChildState>>{
                }),
            middleware: <Middleware<QuickNewsChildState>>[
            ],);

}
