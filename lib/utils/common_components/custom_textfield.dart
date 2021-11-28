import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workmate_app/utils/other_utils/color_constants.dart';
import 'package:workmate_app/utils/responsive/size_config.dart' as config;

class CustomTextField extends StatelessWidget {
  final String? lblTxt;
  final String? hintTxt;
  final String? labelTxt;
  final TextInputType? kType;
  final IconData? icon;
  final Widget? prefix;
  final Widget? suffix;
  final Function(String)? onChange;
  final Function(String)? onSubmitted;
  final InputBorder border;
  final InputBorder? eborder;
  final InputBorder? fborder;
  final bool isEnabled;
  final bool isObscure;
  final TextEditingController? controller;
  final bool isValidate;
  final String? customValMSG;
  final int maxLines;
  final int minLines;
  final int? maxLength;
  final String? counterText;
  final double width;
  final bool isBorder;
  final bool filled;
  final Color fillColor;
  final double vContentPadding;
  final double hContentPadding;
  final double? height;
  final FocusNode? focusNode;
  final Color? hintColor;
  final Color textColor;
  final bool expands;
  final TextAlignVertical? verticalAlign;
  final List<TextInputFormatter>? inputFormatters;

  CustomTextField({
    Key? key,
    this.lblTxt,
    this.hintTxt,
    this.labelTxt,
    this.kType,
    this.icon,
    this.prefix,
    this.suffix,
    this.onChange,
    this.onSubmitted,
    this.border = ktxtFieldBorder,
    this.eborder,
    this.fborder,
    this.isEnabled = true,
    this.isObscure = false,
    this.controller,
    this.isValidate = false,
    this.customValMSG,
    this.maxLines = 1,
    this.minLines = 1,
    this.width = double.infinity,
    this.isBorder = true,
    this.maxLength,
    this.counterText,
    this.filled = true,
    this.fillColor = kAltTextColor,
    this.hintColor = kblack,
    this.textColor = kAltTextDarkColor,
    this.focusNode,
    this.vContentPadding = 11,
    this.hContentPadding = 20,
    this.height = 40,
    this.expands = false,
    this.verticalAlign,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var con = config.SizeConfig();
    return Container(
      height: con.initHeight(v1: 44),
      alignment: Alignment.bottomCenter,
      child: TextFormField(
        validator: (value) {
          if (isValidate) {
            if (value == null || value.isEmpty) {
              if (customValMSG != null) {
                return customValMSG;
              } else {
                return 'This field is required';
              }
            } else {
              return null;
            }
          } else {
            return null;
          }
        },
        onFieldSubmitted: onSubmitted,
        onChanged: onChange,
        keyboardType: kType,
        controller: controller,
        obscureText: isObscure,
        maxLines: expands ? null : maxLines,
        minLines: expands ? null : minLines,
        textAlignVertical: verticalAlign,
        maxLength: maxLength,
        focusNode: focusNode,
        inputFormatters: inputFormatters,
        style: TextStyle(
          color: textColor,
          fontSize: 13,
        ),
        expands: expands,
        buildCounter: (BuildContext context,
                {int? currentLength, int? maxLength, bool? isFocused}) =>
            null,
        decoration: InputDecoration(
          counterText: counterText ?? null,
          border: border,
          filled: filled,
          fillColor: fillColor,
          labelText: labelTxt,
          hintText: hintTxt,
          labelStyle: GoogleFonts.openSans(
            locale: Locale('kr', 'KR'),
            textStyle: TextStyle(
              color: kblack,
            ),
          ),
          hintStyle: GoogleFonts.openSans(
            locale: Locale('kr', 'KR'),
            textStyle: TextStyle(
                color: hintColor ?? kblack, fontSize: con.initTextSize(v1: 17)),
          ),
          enabledBorder: border,
          focusedBorder: border,
          prefixIcon: prefix,
          suffixIcon: Icon(icon),
          enabled: isEnabled,
          contentPadding: EdgeInsets.symmetric(
              horizontal: con.initWidth(v1: hContentPadding),
              vertical: con.initHeight(v1: vContentPadding)),
        ),
      ),
    );
  }
}
