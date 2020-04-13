import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class QuotesDetailPage extends Page<QuotesDetailState, Map<String, dynamic>> {
  QuotesDetailPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<QuotesDetailState>(
                adapter: null,
                slots: <String, Dependent<QuotesDetailState>>{
                }),
            middleware: <Middleware<QuotesDetailState>>[
            ],);

}
