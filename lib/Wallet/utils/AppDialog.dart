import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saws/main/utils/AppColors.dart';
import 'package:saws/Wallet/utils/AppImages.dart';
import 'package:saws/Wallet/utils/AppStrings.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';
import 'package:saws/Wallet/utils/AppConstant.dart';

class AppDialog extends StatefulWidget {
  static var tag = "/AppDialog";

  @override
  AppDialogState createState() => AppDialogState();
}

class AppDialogState extends State<AppDialog> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(milliseconds: 1000), () {
      showDialog(
        context: context,
        builder: (BuildContext context) => CustomDialog(),
      );
    });
  }
}

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}

dialogContent(BuildContext context) {
  var width = MediaQuery.of(context).size.width;

  return Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: const Offset(0.0, 10.0),
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min, // To make the card compact
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.centerRight,
                child: Icon(Icons.close, color: AppTextColorPrimary)),
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppSkyBlue
            ),
            child: Icon(
              Icons.done,
              color: AppWhite,
            ),
          ),
          SizedBox(height: 24),
          text(them5_lbl_fingerprint_authentication,
              textColor: AppTextColorPrimary,
              fontFamily: fontBold,
              fontSize: textSizeNormal),
          Padding(
            padding: const EdgeInsets.only(
                left: 30, right: 30,  bottom: 16,top: 10),
            child: text(App_note_user_fingerprint,
                textColor: AppTextColorSecondary,
                fontFamily: fontMedium,
                fontSize: textSizeMedium,
                maxLine: 2,
                isCentered: true),
          ),
          SizedBox(height: 30),
          GestureDetector(
              onTap: (){
              },
              child: SvgPicture.asset(App_img_fingerprint,width: width/4,color: AppColorPrimary)),
          SizedBox(height: 50),
        ],
      ));
}
