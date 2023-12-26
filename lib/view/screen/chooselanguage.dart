import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sorder/controller/changelanguagecontroller.dart';
import 'package:sorder/core/constants/animations.dart';
import 'package:sorder/core/constants/buttons.dart';
import 'package:sorder/core/constants/dimensions.dart';
import 'package:sorder/core/constants/images.dart';
import 'package:sorder/core/constants/textstyle.dart';
import 'package:sorder/core/localization/changelanguage.dart';

bool isarabic = false;
bool isenglish = false;

class ChooseLanguage extends GetView<ChangeLanguage> {
  @override
  Widget build(BuildContext context) {
    // ChangeLanguageControllerImp controllerImp =
    //     Get.put(ChangeLanguageControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SizedBox(
            height: Dimensions.screenHeight(context)/7,
          ),
          Text(
            "chooselanguage".tr,
            style: Theme.of(context).textTheme.headline1,
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Container(
            height: Dimensions.screenHeight(context)/3.5,
            child: animations.language,
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Container(
            width: double.infinity,
            height: Dimensions.screenHeight(context)/5,
            margin: EdgeInsets.only(left: 30, right: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    isarabic = true;
                    isenglish = false;
                    controller.changeColor();
                    controller.changeLang("ar");
                  },
                  child: Container(
                      width: double.infinity,
                      height: Dimensions.screenHeight(context)/13,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        color: isarabic ? Colors.blue : Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "arabic".tr,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            Container(
                                width: 40,
                                height: Dimensions.screenHeight(context)/14,
                                child: Image.asset(Images.arabicimage))
                          ],
                        ),
                      )),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                GestureDetector(
                  onTap: () {
                    isarabic = false;
                    isenglish = true;

                    controller.changeColor();
                    controller.changeLang("en");
                  },
                  child: Container(
                      width: double.infinity,
                      height: Dimensions.screenHeight(context)/13,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        color: isenglish ? Colors.blue : Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("english".tr),
                            Container(
                                width: 40,
                                height: Dimensions.screenHeight(context)/14,
                                child: Image.asset(Images.englishimage))
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 40)),
          ElevatedButton(
            onPressed: () {
              if(isarabic||isenglish)
              Get.offNamed("OnBoarding");
            },
            child: Text("continuebutton".tr, style: TextStyles.textbuttonstyle),
            style: buttonseapp.elevatedButtonStyle,
          )
        ],
      ),
    );
  }
}
