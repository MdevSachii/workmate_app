import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:transition/transition.dart';

class UtilFunctions {
  // navigation function with animation transitions
  static void navigateTo(BuildContext context, Widget page,
      [Object? arguments]) {
    Navigator.push(
        context,
        Transition(
            child: page,
            arguments: arguments,
            transitionEffect: TransitionEffect.BOTTOM_TO_TOP));
  }

  static void pushremoveNavigation(BuildContext context, Widget page) {
    Future.delayed(const Duration(milliseconds: 1000), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => page),
          (Route<dynamic> route) => false);
    });
  }

  static void pushremoveNavigationInstant(BuildContext context, Widget page) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (BuildContext context) => page),
        (Route<dynamic> route) => false);
  }

  static void pushAndReplace(BuildContext context, Widget page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  // navigation function go back
  static void goBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  //pick image function
  Future<File?> pickImage(BuildContext context, {bool fromGal = true}) async {
    File? _image;
    final picker = ImagePicker();

    final pickedFile = await picker.getImage(
        source: fromGal ? ImageSource.gallery : ImageSource.camera);

    if (pickedFile != null) {
      _image = File(pickedFile.path);

      // return _cropImage(_image);
    } else {
      print('No image selected.');
      return _image;
    }
  }

  static String getFormatedDate(DateTime date) {
    var formatter = new DateFormat('yyyy-MM-dd');
    var formattedDate = formatter.format(date);

    return formattedDate;
  }
}
