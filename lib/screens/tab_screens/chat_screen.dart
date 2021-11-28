import 'package:flutter/material.dart';
import 'package:workmate_app/screens/tab_screens/component/chat.dart';
import 'package:workmate_app/utils/common_components/custom_sizebox.dart';
import 'package:workmate_app/utils/common_components/custom_text.dart';
import 'package:workmate_app/utils/other_utils/color_constants.dart';
import 'package:workmate_app/utils/responsive/size_config.dart' as config;

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List imagelist = [
    'https://1.bp.blogspot.com/-CeYybr8ku2w/XjUXmu-bVrI/AAAAAAAAL-Q/2VlOw8SuMOQHTQ9dETxhgRcYNwUBKsJAgCLcBGAsYHQ/s1600/Girls-dp-pic.jpg',
    'https://1.bp.blogspot.com/-rJpMY-Fo_qg/Xjf4BZCsq1I/AAAAAAAAMAw/0s6QDVwp0zoRw64LXYD5QhrUo6DUu1vNwCLcBGAsYHQ/s1600/Cute-girls-dp.jpg'
  ];
  List name = [
    'Herlinda T. Smith',
    'Tara Lowery',
  ];
  List time = [
    '10.40',
    '10.30',
  ];
  List check = [true, false];
  List w = [125.00, 155.00];
  bool isActive = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var con = config.SizeConfig();
    return ListView.builder(
      // physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.all(
        con.initWidth(v1: 15),
      ),
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) => Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: con.initWidth(v1: 40),
                  height: con.initHeight(v1: 40),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(imagelist[index]),
                        fit: BoxFit.fill),
                  ),
                ),
                const CustomWBox(val: 10),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText(
                          text: name[index],
                          fontColor: kblack,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomWBox(val: w[index]),
                        CustomText(
                          text: time[index],
                          fontColor: kblack,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.done_all_outlined,
                          size: 20,
                          color: Colors.greenAccent,
                        ),
                        const CustomText(
                          text: 'Lorem ipsum dolor sit amet,',
                          fontColor: kblack,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        const CustomWBox(val: 45),
                        // GestureDetector(
                        //   onTap: () {
                        //     setState(() {
                        //       check[index];
                        //     });
                        //   },
                        // ),
                        isActive
                            ? Container(
                                alignment: Alignment.center,
                                width: con.initWidth(v1: 20),
                                height: con.initHeight(v1: 20),
                                decoration: const BoxDecoration(
                                  color: kPrimaryColor,
                                  shape: BoxShape.circle,
                                ),
                                child: const CustomText(
                                  text: '1',
                                  fontColor: kWhite,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
