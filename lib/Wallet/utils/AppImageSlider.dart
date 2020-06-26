import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saws/Wallet/model/AppModels.dart';
import 'package:saws/main/utils/AppColors.dart';
import 'package:saws/Wallet/utils/AppDataGenerator.dart';
import 'package:saws/Wallet/utils/AppExtension.dart';
import 'package:saws/Wallet/utils/AppStrings.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';
import 'package:saws/Wallet/utils/AppConstant.dart';
import 'package:saws/Wallet/utils/widgets/AppSlider.dart';

class AppImageSlider extends StatefulWidget {
  static var tag = "/AppImageSlider";

  @override
  AppImageSliderState createState() => AppImageSliderState();
}

class AppImageSliderState extends State<AppImageSlider> {
  int selectedPos = 1;
  List<AppSlider> mSliderList;

  @override
  void initState() {
    super.initState();
    selectedPos = 1;
    mSliderList = getSliders();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    changeStatusColor(AppLayoutBackgroundWhite);

    return Scaffold(
      backgroundColor: AppLayoutBackgroundWhite,
      body: Container(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TopBar(),
            Padding(
              padding: const EdgeInsets.only(left:20.0,top: 20,bottom: 30),
              child: text(App_image_slider,
                  textColor: AppTextColorPrimary,
                  fontFamily: fontBold,
                  fontSize: textSizeXLarge),
            ),
            AppSliderWidget(mSliderList),

          ],
        ),
      ),
    );
  }
}
