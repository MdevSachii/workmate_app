import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:workmate_app/utils/other_utils/color_constants.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({
    Key? key,
    this.size = 40,
    this.color = kPrimaryColor,
  }) : super(key: key);

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitRing(
        color: color,
        size: size,
      ),
    );
  }
}

class CustomLoader2 extends StatelessWidget {
  const CustomLoader2({
    Key? key,
    this.size = 40,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitPulse(
        color: kPrimaryColor,
        size: size,
      ),
    );
  }
}
