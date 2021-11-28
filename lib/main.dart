import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workmate_app/screens/splash_screen/splash_screen.dart';
import 'package:workmate_app/utils/other_utils/color_constants.dart';
import 'package:workmate_app/utils/responsive/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));

    return LayoutBuilder(builder: (context, constraints) {
      SizeConfig().init(constraints);

      return MaterialApp(
        title: 'dmas_digital',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme:
              const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.dark),
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kWhite,
          colorScheme: const ColorScheme.light(
            primary: kPrimaryColor,
          ),
          textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
        ),
        home: const SplashScreen(),
      );
    });
  }
}
