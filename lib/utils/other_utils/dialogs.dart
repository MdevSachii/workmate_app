import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class DialogBoxes {
  static Future<dynamic> dialogBox(
      BuildContext context, String title, String desc, DialogType dialogType,
      [Function? btnOkOnPress]) {
    return AwesomeDialog(
      context: context,
      animType: AnimType.SCALE,
      dialogType: dialogType,
      title: title,
      desc: desc,
      btnOkOnPress: btnOkOnPress ?? () {},
    ).show();
  }

  static void showSnackBarDialog(BuildContext context, String text,
      {Color color = Colors.green}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 1500),
        backgroundColor: color,
        content: Text(text),
      ),
    );
  }
}
