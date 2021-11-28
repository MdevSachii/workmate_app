import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workmate_app/utils/other_utils/color_constants.dart';
import 'package:workmate_app/utils/responsive/size_config.dart' as config;

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    this.fontColor = kblack,
    this.fontSize = 15,
    this.fontWeight = FontWeight.normal,
    this.letterSpacing = 0.6,
    required this.text,
    this.textDecoration,
    this.textOverflow = TextOverflow.ellipsis,
    this.textAlign = TextAlign.center,
    this.width,
    this.alignment,
    this.ontap,
    this.isTranslating = true,
  }) : super(key: key);

  final Color fontColor;
  final double fontSize;
  final String text;
  final FontWeight fontWeight;
  final double letterSpacing;
  final TextDecoration? textDecoration;
  final TextOverflow textOverflow;
  final TextAlign textAlign;
  final double? width;
  final Alignment? alignment;
  final Function()? ontap;
  final bool isTranslating;

  @override
  Widget build(BuildContext context) {
    var con = config.SizeConfig();

    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: alignment,
        width: width != null ? con.initWidth(v1: width!) : null,
        child: Text(
          text,
          textAlign: textAlign,
          overflow: textOverflow,
          style: GoogleFonts.openSans(
            locale: Locale('kr', 'KR'),
            color: fontColor,
            fontSize: con.initTextSize(v1: fontSize),
            letterSpacing: letterSpacing,
            decoration: textDecoration,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
