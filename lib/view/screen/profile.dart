import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sorder/core/constants/balls.dart';
import 'package:sorder/core/constants/buttons.dart';
import 'package:sorder/core/constants/dimensions.dart';
import 'package:sorder/core/constants/profileextfiled.dart';
import 'package:sorder/core/constants/textstyle.dart';
import 'package:sorder/core/services/services.dart';

class Profile extends StatelessWidget {
  Myservices myServices = Get.find();

  Icon nameIcon =const Icon(
    Icons.account_circle_outlined,
    size: 24,
    color: Colors.orange,
  );
  Icon emailIcon = const Icon(
    Icons.mail_outline,
    size: 24,
    color: Colors.orange,
  );
  Icon passwordIcon =const Icon(
    Icons.lock_outline,
    size: 24,
    color: Colors.orange,
  );
  Icon phoneIcon = const Icon(
    Icons.phone,
    size: 24,
    color: Colors.orange,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Stack(children: [
          Container(
            color: Colors.white,
            width: Dimensions.screenwidth(context),
            height: 250,
          ),
          Stack(children: [
            Container(
              height: 140,
              width: Dimensions.screenwidth(context),
              decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
            ),
            const Positioned(
                right: 10, top: 10, child: Balls(Width: 60, Height: 60)),
            const Positioned(
                left: 10, bottom: 10, child: Balls(Width: 60, Height: 60)),
            const Positioned(
                left: -20, top: -20, child: Balls(Width: 60, Height: 60)),
            const Positioned(
                //left: 10,
                right: 30,
                bottom: -20,
                child: Balls(Width: 60, Height: 60)),
            const Positioned(
                //left: 10,
                right: 140,
                top: 40,
                child: Balls(Width: 60, Height: 60)),
            const Positioned(
                //left: 10,
                left: 90,
                top: 10,
                child: Balls(Width: 60, Height: 60))
          ]),
          Positioned(
              //left: 10,
              right: 140,
              top: 80,
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Colors.grey,
                ),
                child: const Icon(
                  Icons.camera_alt_outlined,
                  size: 40,
                ),
              )),
        ]),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child: Column(
                children: [
                  ProfileTextFiled(
                      hinttext:
                          "${myServices.sharedPreferences.getString("firstname")}"
                          " "
                          "${myServices.sharedPreferences.getString("lastname")}",
                      icontext: nameIcon),
                  ProfileTextFiled(
                      hinttext:
                          "${myServices.sharedPreferences.getString("email")}",
                      icontext: emailIcon),
                  ProfileTextFiled(
                      hinttext:
                          "${myServices.sharedPreferences.getString("phone")}",
                      icontext: phoneIcon),
                  ProfileTextFiled(
                      hinttext:
                          "${myServices.sharedPreferences.getString("password")}",
                      icontext: passwordIcon)
                ],
              )),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 40),
            child: ElevatedButton(
              onPressed: () {},
              style: buttonseapp.elevatedButtonStyle,
              child: Text(
                "editprofile".tr,
                style: TextStyles.textbuttonstyle,
              ),
            ))
      ]),
    );
  }
}
