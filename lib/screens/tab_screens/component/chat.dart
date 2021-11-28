import 'package:flutter/material.dart';
import 'package:workmate_app/utils/common_components/custom_text.dart';
import 'package:workmate_app/utils/other_utils/color_constants.dart';
import 'package:workmate_app/utils/responsive/size_config.dart' as config;

// ignore: must_be_immutable
class ChatDisplay extends StatelessWidget {
  String image;
  ChatDisplay({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var con = config.SizeConfig();
    return SizedBox(
      height: con.initHeight(v1: 60),
      child: Padding(
        padding: EdgeInsets.all(
          con.initWidth(v1: 10),
        ),
        child: Row(
          children: [
            Container(
              width: con.initWidth(v1: 40),
              height: con.initHeight(v1: 40),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.fill),
              ),
            ),
            Column(
              children: [
                Row(
                  children: const [
                    CustomText(
                      text: 'Herlinda T. Smith',
                      fontColor: kblack,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    Spacer(),
                    CustomText(
                      text: '10.40',
                      fontColor: kblack,
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const CustomText(
                      text: 'Herlinda T. Smith',
                      fontColor: kblack,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    const Spacer(),
                    Container(
                      width: con.initWidth(v1: 10),
                      height: con.initHeight(v1: 10),
                      decoration: const BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: const CustomText(
                        text: '1',
                        fontColor: kWhite,
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
