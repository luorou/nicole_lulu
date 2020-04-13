import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:nicolelulu/view/main/page.dart';
import 'package:nicolelulu/view/quotes/detail/page.dart';

import 'aplication.dart';

var mainPageHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return MainPage().buildPage(Application.transformParams(params));
});

var quotesDetailHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return QuotesDetailPage().buildPage(Application.transformParams(params));
});