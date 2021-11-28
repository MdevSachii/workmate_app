import 'package:flutter/material.dart';
import 'package:workmate_app/screens/main_screen/main_screen.dart';
import 'package:workmate_app/utils/common_components/custom_button.dart';
import 'package:workmate_app/utils/common_components/custom_sizebox.dart';
import 'package:workmate_app/utils/common_components/custom_text.dart';
import 'package:workmate_app/utils/common_components/screen_body.dart';
import 'package:workmate_app/utils/other_utils/color_constants.dart';
import 'package:workmate_app/utils/other_utils/other_constants.dart';
import 'package:workmate_app/utils/responsive/util_functions.dart';

class UserConfirmationScreen extends StatefulWidget {
  const UserConfirmationScreen({Key? key}) : super(key: key);

  @override
  _UserConfirmationScreenState createState() => _UserConfirmationScreenState();
}

class _UserConfirmationScreenState extends State<UserConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenBody(
      widgetBody: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("${Constants.ICON_PATH}WorkMate.png"),
          const CustomHBox(val: 5),
          const CustomText(
            text: 'Welcome',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontColor: kPrimaryColor,
          ),
          const CustomHBox(val: 130),
          Container(
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://1.bp.blogspot.com/-d8P7DHWsN5Y/Xjf4BUN7t5I/AAAAAAAAMA4/p4wqRoQcoaAFRiePWxTcGV69RzYnIOBqACLcBGAsYHQ/s1600/Cute-dp-images.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          const CustomHBox(val: 15),
          const CustomText(
            text: 'Tara Lowery',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontColor: kblack,
          ),
        ],
      ),
      bottomButton: CustomButton(
        txt: 'Confirm',
        ontap: () {
          UtilFunctions.pushremoveNavigation(context, const MainScreen());
        },
      ),
    );
  }
}
