
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saws/main/utils/AppColors.dart';

import './AppBubbleBotoomBar.dart';
import '../AppImages.dart';
import '../AppStrings.dart';
class AppBottomBar extends StatefulWidget {
  static String tag = '/AppBottomBar';
  @override
  AppBottomBarState createState() => AppBottomBarState();
}
class AppBottomBarState extends State<AppBottomBar> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BubbleBottomBar(
      opacity: .1,
      currentIndex: currentIndex,
      elevation: 0,
      onTap: (index){
        setState(() {
          currentIndex = index;
        });
      },
      //new
      hasNotch: false,
      //new
      hasInk: true,
      //new, gives a cute ink effect
      inkColor: AppWhite,
      //optional, uses theme color if not specified
      items: <BubbleBottomBarItem>[
        tab(App_img_home, App_home),
        tab(App_list_check, App_lbl_listing),
        tab(App_notification_2, App_notification),
        tab(App_user, App_lbl_profile),
      ],
    );
  }
}