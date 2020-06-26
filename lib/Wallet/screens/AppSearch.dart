import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saws/Wallet/utils/AppExtension.dart';
import 'package:saws/Wallet/model/AppModels.dart';
import 'package:saws/main/utils/AppColors.dart';
import 'package:saws/Wallet/utils/AppDataGenerator.dart';
import 'package:saws/Wallet/utils/AppStrings.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';
import 'package:saws/Wallet/utils/AppConstant.dart';

class AppSearch extends StatefulWidget {
  static String tag = '/AppSearch';

  @override
  AppSearchState createState() => AppSearchState();
}

class AppSearchState extends State<AppSearch> {
  List<AppContact> mRecentContact=List<AppContact>();
  List<AppContact> mOtherContact=List<AppContact>();
  @override
  void initState() {
    super.initState();
    mRecentContact=getRecents();
    mOtherContact=getPending();
  }
  Widget contactList(List<AppContact> mContactList){
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: mContactList.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 12,bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(mContactList[index].img),
                      radius: 28,
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          text(mContactList[index].name,textColor: AppTextColorPrimary,fontSize: textSizeMedium,fontFamily: fontMedium),
                          text(mContactList[index].contactno,fontSize: textSizeMedium)
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                height: 0.5,color: AppViewColor,
              )
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    changeStatusColor(AppWhite);

    return Scaffold(
      body: Container(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TopBar(titleName: App_contact_list),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                style: TextStyle(
                    fontSize: textSizeLargeMedium, fontFamily: fontRegular),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.fromLTRB(16, 10, 16, 10),
                  hintText: App_hint_search,
                  hintStyle: TextStyle(color: AppTextColorThird),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide:
                        const BorderSide(color: AppViewColor, width: 0.7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide:
                        const BorderSide(color: AppViewColor, width: 0.7),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      text(App_recently_contact,
                          textColor: AppTextColorPrimary,
                          fontSize: textSizeNormal,
                          fontFamily: fontBold),
                      Container(child: contactList(mRecentContact)),
                      SizedBox(height: 26),
                      text(App_other_contact,
                          textColor: AppTextColorPrimary,
                          fontSize: textSizeNormal,
                          fontFamily: fontBold),
                      Container(child: contactList(mOtherContact)),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
