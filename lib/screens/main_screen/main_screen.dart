import 'package:flutter/material.dart';
import 'package:workmate_app/screens/tab_screens/chat_screen.dart';
import 'package:workmate_app/utils/common_components/custom_text.dart';
import 'package:workmate_app/utils/other_utils/color_constants.dart';
import 'package:workmate_app/utils/responsive/size_config.dart' as config;

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var con = config.SizeConfig();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Container(
            margin: EdgeInsets.only(left: con.initWidth(v1: 20)),
            child: const CustomText(
              text: 'WorkMate',
              fontColor: kWhite,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: con.initWidth(v1: 20)),
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://1.bp.blogspot.com/-d8P7DHWsN5Y/Xjf4BUN7t5I/AAAAAAAAMA4/p4wqRoQcoaAFRiePWxTcGV69RzYnIOBqACLcBGAsYHQ/s1600/Cute-dp-images.jpg'),
                    fit: BoxFit.fill),
              ),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: CustomText(
                  text: 'CHATS',
                  fontColor: kWhite,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Tab(
                child: CustomText(
                  text: 'GROUPS',
                  fontColor: kWhite,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Tab(
                child: CustomText(
                  text: 'CONTACTS',
                  fontColor: kWhite,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatScreen(),
            ChatScreen(),
            ChatScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(
            Icons.attach_email_outlined,
            color: kWhite,
          ),
          backgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
