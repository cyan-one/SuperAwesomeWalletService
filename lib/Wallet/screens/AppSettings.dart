import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saws/main/utils/AppColors.dart';
import 'package:saws/Wallet/utils/AppExtension.dart';
import 'package:saws/Wallet/utils/AppImages.dart';
import 'package:saws/Wallet/utils/AppStrings.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';
import 'package:saws/Wallet/utils/AppConstant.dart';
import 'package:saws/Wallet/utils/widgets/AppExpandable.dart';

class AppSettings extends StatefulWidget {
  static var tag = "/AppSettings";

  @override
  AppSettingsState createState() => AppSettingsState();
}

class AppSettingsState extends State<AppSettings> {
  int selectedPos = 1;
  bool notification = false;
  bool discounts = false;
  bool gift = false;
  bool fastPayment = false;
  ExpandableController _controller = new ExpandableController();
  String _selectedLocation='English';

  double width;

  @override
  void initState() {
    super.initState();
    selectedPos = 1;
  }

  Widget settingItem(String name, {String icon = "",var pad=16.0}) {
    return Expanded(
      child: Padding(
        padding:  EdgeInsets.all(pad),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 18),
              width: width / 7.5,
              height: width / 7.5,
              padding: EdgeInsets.all(width / 30),
              decoration: icon.isNotEmpty
                  ? boxDecoration(radius: 4, bgColor: AppWhite, showShadow: true)
                  : null,
              child: SvgPicture.asset(icon),
            ),
            text(name,
                textColor: AppTextColorPrimary,
                fontFamily: fontMedium,
                fontSize: textSizeLargeMedium)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
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
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: text(App_settings,
                  textColor: AppTextColorPrimary,
                  fontFamily: fontBold,
                  fontSize: textSizeXLarge),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 24,
                      ),
                      AppExpandablePanel(
                        header: Row(
                          children: <Widget>[
                            settingItem(App_notification, icon: App_img_notification),
                            Switch(
                              value: notification,
                              onChanged: (value) {
                                setState(() {
                                  notification = value;
                                  _controller.expanded = notification;
                                  print(notification);
                                });
                              },
                              activeTrackColor: AppColorPrimary,
                              activeColor: AppWhite,
                            )
                          ],
                        ),
                        controller: _controller,
                        expanded: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                settingItem(App_discounts,pad: 10.0),
                                Switch(
                                  value: discounts,
                                  onChanged: (value) {
                                    setState(() {
                                      discounts = value;
                                    });
                                  },
                                  activeTrackColor: AppColorPrimary,
                                  activeColor: AppWhite,
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                settingItem(App_gift,pad: 10.0),
                                Switch(
                                  value: gift,
                                  onChanged: (value) {
                                    setState(() {
                                      gift = value;
                                    });
                                  },
                                  activeTrackColor: AppColorPrimary,
                                  activeColor: AppWhite,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      divider(),
                      Row(
                        children: <Widget>[
                          settingItem(App_fast_payment, icon: App_payments),
                          Switch(
                            value: fastPayment,
                            onChanged: (value) {
                              setState(() {
                                fastPayment = value;
                              });
                            },
                            activeTrackColor: AppColorPrimary,
                            activeColor: AppWhite,
                          )
                        ],
                      ),
                      divider(),
                      Row(
                        children: <Widget>[
                          settingItem(App_fingerprint, icon: App_img_fingerprint_2),
                          IconButton(
                            icon: Icon(
                                Icons.keyboard_arrow_right,color: AppTextColorSecondary,
                            ), onPressed: () {  },
                          ),
                        ],
                      ),
                      divider(),
                      Row(
                        children: <Widget>[
                          settingItem(App_language, icon: App_translate),
                          DropdownButton<String>(
                            icon: Icon(Icons.keyboard_arrow_right,color: AppTextColorSecondary),
                            underline: SizedBox(),
                            value: _selectedLocation,
                            items: <String>['English', 'French','German'].map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: text(value,fontSize: textSizeLargeMedium,textColor: AppTextColorPrimary),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedLocation = newValue;
                              });
                            },
                          ),
                          SizedBox(width: 16,)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
