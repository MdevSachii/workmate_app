import 'package:flutter/material.dart';
import 'package:workmate_app/utils/common_components/custom_text.dart';
import 'package:workmate_app/utils/responsive/size_config.dart' as config;

class ScreenBody extends StatelessWidget {
  const ScreenBody({
    Key? key,
    required this.widgetBody,
    this.bottomButton,
    this.bottomBar,
    this.bgcolor,
    this.trailing,
    this.imgPath,
    this.extendBodyBehindAppBar = false,
    this.title,
    this.padding = 45,
  }) : super(key: key);

  final Widget widgetBody;

  final Widget? bottomBar;
  final Widget? bottomButton;
  final Color? bgcolor;
  final Widget? trailing;
  final String? imgPath;
  final bool? extendBodyBehindAppBar;
  final String? title;
  final double padding;

  @override
  Widget build(BuildContext context) {
    var con = config.SizeConfig();

    return Scaffold(
      // backgroundColor: bgcolor == null ? kPrimaryColor : bgcolor,

      extendBodyBehindAppBar: extendBodyBehindAppBar ?? false,
      body: Container(
        height: con.h(),
        width: con.w(),
        padding: EdgeInsets.symmetric(
            horizontal: con.initWidth(v1: padding),
            vertical: con.initWidth(v1: padding)),
        child: widgetBody,
      ),
      bottomNavigationBar: bottomButton != null
          ? Padding(
              padding: EdgeInsets.symmetric(
                horizontal: con.initWidth(v1: padding),
                vertical: con.initHeight(v1: padding),
              ),
              child: bottomButton,
            )
          : bottomBar,
    );
  }
}
