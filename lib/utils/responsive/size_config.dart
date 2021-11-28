import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SizeConfig {
  static double _screenWidth = 0;
  static double _screenHeight = 0;
  static double _blockWidth = 0;
  static double _blockHeight = 0;

  static double textMultiplier = 0;
  static double imageSizeMultiplier = 0;
  static double heightMultiplier = 0;
  static double widthMultiplier = 0;

  static bool isTabPortrait = false;
  static bool isMobilePortrait = false;

  void init(BoxConstraints constraints) {
    _screenWidth = constraints.maxWidth;
    _screenHeight = constraints.maxHeight;

    if (_screenWidth < 450) {
      isMobilePortrait = true;
      print("mobile Portrait is --$isMobilePortrait");
    } else {
      isTabPortrait = true;
      print("tab Portrait is --$isTabPortrait");
    }

    _blockWidth = _screenWidth / 100;
    _blockHeight = _screenHeight / 100;

    textMultiplier = _blockHeight;
    imageSizeMultiplier = _blockWidth;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;

    print(heightMultiplier);
    print(widthMultiplier);
  }

  double initHeight({required double v1, double v2 = 1}) {
    return isMobilePortrait
        ? initSizeConfig(heightMultiplier, v1)
        : initSizeConfig(heightMultiplier, v1);
  }

  double initWidth({required double v1, double v2 = 1}) {
    return isMobilePortrait
        ? initSizeConfig(widthMultiplier, v1)
        : initSizeConfig(widthMultiplier, v1);
  }

  double getPropotionateHeight(double actualHeight) {
    // 811 is the artboard height that designer use
    if (actualHeight == 300) {
      print("hure");
      print((actualHeight / 811.0) * _screenHeight);
    }
    return (actualHeight / 811.0) * _screenHeight;
  }

  double getPropotionateWidth(double actualWidth) {
    // 375 is the artboard width that designer use
    return (actualWidth / 375.0) * _screenWidth;
  }

  double h() => _screenHeight;

  double w() => _screenWidth;

  double initTextSize({required double v1, double v2 = 1}) {
    return isMobilePortrait
        ? initSizeConfig(textMultiplier, v1)
        : initSizeConfig(textMultiplier, v1);
  }

  double initSizeConfig(double h, double val) {
    return double.parse((val / h).toStringAsFixed(2)) * h;
  }
}
