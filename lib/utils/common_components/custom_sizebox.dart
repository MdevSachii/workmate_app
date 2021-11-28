import 'package:flutter/material.dart';
import 'package:workmate_app/utils/responsive/size_config.dart' as config;

class CustomHBox extends StatelessWidget {
  const CustomHBox({
    Key? key,
    required this.val,
  }) : super(key: key);

  final double val;

  @override
  Widget build(BuildContext context) {
    var con = config.SizeConfig();
    return SizedBox(height: con.initHeight(v1: val));
  }
}

class CustomWBox extends StatelessWidget {
  const CustomWBox({
    Key? key,
    required this.val,
  }) : super(key: key);

  final double val;

  @override
  Widget build(BuildContext context) {
    var con = config.SizeConfig();
    return SizedBox(width: con.initWidth(v1: val));
  }
}
