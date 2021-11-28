import 'package:flutter/material.dart';
import 'package:workmate_app/screens/auth_screen/user_confirmation_screen.dart';
import 'package:workmate_app/utils/common_components/custom_button.dart';
import 'package:workmate_app/utils/common_components/custom_sizebox.dart';
import 'package:workmate_app/utils/common_components/custom_text.dart';
import 'package:workmate_app/utils/common_components/custom_textfield.dart';
import 'package:workmate_app/utils/common_components/screen_body.dart';
import 'package:workmate_app/utils/other_utils/color_constants.dart';
import 'package:workmate_app/utils/other_utils/other_constants.dart';
import 'package:workmate_app/utils/responsive/util_functions.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({Key? key}) : super(key: key);

  @override
  _SingInScreenState createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenBody(
      widgetBody: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("${Constants.ICON_PATH}WorkMate.png"),
          const CustomHBox(val: 8),
          const CustomText(
            text: 'Sign In',
            fontSize: 22,
            fontWeight: FontWeight.w600,
            fontColor: kPrimaryColor,
          ),
          const CustomHBox(val: 8),
          const CustomText(
            text: 'With your Work Account',
            fontSize: 22,
            fontWeight: FontWeight.w600,
            fontColor: kblack,
          ),
          const CustomHBox(val: 180),
          CustomTextField(
            hintTxt: 'User name',
            icon: Icons.person_outline_rounded,
            border: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBorderColor),
            ),
          ),
        ],
      ),
      bottomButton: CustomButton(
        txt: 'Next',
        ontap: () {
          UtilFunctions.pushremoveNavigation(
              context, const UserConfirmationScreen());
        },
      ),
    );
  }
}
