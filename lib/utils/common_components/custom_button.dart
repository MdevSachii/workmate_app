import 'package:flutter/material.dart';
import 'package:workmate_app/utils/common_components/custom_text.dart';
import 'package:workmate_app/utils/other_utils/color_constants.dart';
import 'package:workmate_app/utils/responsive/size_config.dart' as config;

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final String txt;
  final String? leadingIcon;
  final double fontsize;
  final Color color;
  final Color? txtColor;
  final Color borderColor;
  final Function()? ontap;
  final bool ignoreWidth;
  final bool ignoreRadius;
  final bool isDisabled;
  final double hPadding, wPadding;
  const CustomButton({
    Key? key,
    this.width = 370,
    this.height = 41,
    required this.txt,
    this.leadingIcon,
    this.fontsize = 17,
    this.color = kPrimaryColor,
    this.txtColor = kWhite,
    this.borderColor = kPrimaryColor,
    required this.ontap,
    this.ignoreWidth = true,
    this.ignoreRadius = false,
    this.isDisabled = false,
    this.hPadding = 0,
    this.wPadding = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var con = config.SizeConfig();
    return GestureDetector(
      onTap: isDisabled ? null : ontap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: con.initWidth(v1: wPadding),
          vertical: con.initHeight(v1: hPadding),
        ),
        width: ignoreWidth ? con.initWidth(v1: width) : null,
        height: con.initHeight(v1: height),
        decoration: BoxDecoration(
          color: isDisabled ? const Color(0xFF9C9C9C) : color,
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(
          //     // color: borderColor,
          //     )
        ),
        child: CustomText(
          text: txt,
          fontSize: fontsize,
          fontColor: txtColor!,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
