import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:saws/Wallet/model/AppModels.dart';
import 'package:saws/main/utils/AppColors.dart';
import 'package:saws/Wallet/utils/AppDataGenerator.dart';
import 'package:saws/Wallet/utils/AppExtension.dart';
import 'package:saws/Wallet/utils/AppStrings.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';
import 'package:saws/Wallet/utils/widgets/AppGridListing.dart';

class AppBottomSheet extends StatefulWidget {
  static var tag = "/AppBottomSheet";

  @override
  AppBottomSheetState createState() => AppBottomSheetState();
}

class AppBottomSheetState extends State<AppBottomSheet> {
  GlobalKey<ScaffoldState> _scaffoldKey = null;
  List<AppCategory> mFavouriteList;

  @override
  void initState() {
    super.initState();
    mFavouriteList=getBottomSheetItems();
  }
   showSheet(BuildContext aContext){
     showModalBottomSheet(
         backgroundColor: Colors.transparent,
         context:aContext,
         isScrollControlled: true,
         builder: (BuildContext context) {
           return DraggableScrollableSheet(
               initialChildSize: 0.65,
               maxChildSize: 1,
               minChildSize: 0.5,
               builder:
                   (BuildContext context, ScrollController scrollController) {
                 return Container(
                   padding: EdgeInsets.only(top: 24),
                   alignment: Alignment.topLeft,
                   decoration: BoxDecoration(
                       color: AppLayoutBackgroundWhite,
                       borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(24),
                           topRight: Radius.circular(24)
                       )
                   ),
                   child: Column(
                     children: <Widget>[
                       Container(
                         color: AppViewColor,
                         width: 50,
                         height: 3,
                       ),
                       SizedBox(height: 20),
                       Expanded(
                         child: Padding(
                           padding: const EdgeInsets.only(left:20,right: 20),
                           child: AppGridListing(mFavouriteList,true),
                         ),
                       )
                     ],
                   ),
                 );

               });

         });
   }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(AppWhite);
    _scaffoldKey = new GlobalKey<ScaffoldState>();
    Future.delayed(const Duration(milliseconds: 1000), () {
      showSheet(context);
    });
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          TopBar(),
          Container(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  showSheet(context);

                },
                  child: ring(App_lbl_welcome_to_bottom_sheet)))
        ],
      ),
    );
  }
}
