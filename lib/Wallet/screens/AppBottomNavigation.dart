import 'package:flutter/material.dart';
import 'package:saws/main/utils/AppColors.dart';
import 'package:saws/Wallet/utils/AppExtension.dart';
import 'package:saws/Wallet/utils/AppBubbleBotoomBar.dart';
import 'package:saws/Wallet/utils/AppImages.dart';
import 'package:saws/Wallet/utils/AppStrings.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';

class AppBottomNavigation extends StatefulWidget {
  static var tag = "/AppBottomNavigation";

  @override
  AppBottomNavigationState createState() => AppBottomNavigationState();
}

class AppBottomNavigationState extends State<AppBottomNavigation> {
  var currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(AppWhite);

    return Scaffold(
      bottomNavigationBar: BubbleBottomBar(
        opacity: .2,
        currentIndex: currentIndex,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        onTap: changePage,
        //new
        hasNotch: false,
        //new
        hasInk: true,
        //new, gives a cute ink effect
        inkColor: AppColorPrimaryLight,
        //optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
          tab(App_img_home, App_home),
          tab(App_list_check, App_lbl_listing),
          tab(App_notification_2, App_notification),
          tab(App_user, App_lbl_profile),
        ],
      ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: ring(App_lbl_welcome_to_bottom_n_navigation_bar),
          ),
          TopBar()
        ],
      ),
    );
  }
}
