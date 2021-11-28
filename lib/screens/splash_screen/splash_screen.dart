import 'package:flutter/material.dart';
import 'package:workmate_app/screens/auth_screen/singin_screen.dart';
import 'package:workmate_app/utils/other_utils/other_constants.dart';
import 'package:workmate_app/utils/responsive/util_functions.dart';
import 'package:workmate_app/utils/responsive/size_config.dart' as config;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        UtilFunctions.pushremoveNavigation(context, SingInScreen());
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var con = config.SizeConfig();
    return Scaffold(
      body: Center(
        child: Container(
          // width: con.initWidth(v1: 200),
          // height: con.initHeight(v1: 100),
          child: Image.asset("${Constants.ICON_PATH}WorkMate.png"),
        ),
      ),
    );
  }
}
