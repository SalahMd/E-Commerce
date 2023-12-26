import 'package:flutter/material.dart';
import 'package:sorder/core/constants/dimensions.dart';
import 'package:sorder/core/constants/images.dart';
import 'package:sorder/view/widgets/listtile.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
            width: Dimensions.screenwidth(context),
            height: Dimensions.screenHeight(context) / 2.6,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  Images.settings,
                  fit: BoxFit.fill,
                ))),
        Container(
          width: Dimensions.screenwidth(context),
          height: Dimensions.screenHeight(context) / 2.3,
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ListTiles(
                leadingIcon: Icon(
                  Icons.list_outlined,
                  color: Colors.white,
                ),
                trailingIcon: Icon(Icons.arrow_forward),
                listText: "My orders"),
            ListTiles(
                leadingIcon: Icon(
                  Icons.lock_outlined,
                  color: Colors.white,
                ),
                trailingIcon: Icon(Icons.arrow_forward),
                listText: "Change password"),
            ListTiles(
                leadingIcon: Icon(
                  Icons.privacy_tip,
                  color: Colors.white,
                ),
                trailingIcon: Icon(Icons.arrow_forward),
                listText: "Privacy"),
            ListTiles(
                leadingIcon: Icon(
                  Icons.logout_outlined,
                  color: Colors.white,
                ),
                trailingIcon: Icon(Icons.arrow_forward),
                listText: "Logout"),
            ListTiles(
                leadingIcon: Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
                trailingIcon: Icon(Icons.arrow_forward),
                listText: "About"),
          ]),
        )
      ]),
    );
  }
}
