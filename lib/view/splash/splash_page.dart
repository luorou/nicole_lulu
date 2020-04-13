import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nicolelulu/router/aplication.dart';
import 'package:nicolelulu/router/routes.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashPageState();
  }
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Application.router.navigateTo(context, Routes.mainPage, replace: true);
        },
        child: new Image(
          width: ScreenUtil.screenWidthDp,
          height: ScreenUtil.screenHeightDp,
          image: AssetImage("images/nicole_lulu.webp"),
          fit: BoxFit.cover,
          gaplessPlayback: true,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
