import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:sorder/core/constants/dimensions.dart';
import 'package:sorder/core/functions/getlanguage.dart';

class TopBar extends StatelessWidget {
  final void Function()? onPressedProfileIcon;

  const TopBar({super.key, this.onPressedProfileIcon});
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.screenwidth(context),
      height: 130,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          color: Colors.orange),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "home".tr,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )
                    .animate()
                    .fade(duration: 1000.ms)
                    .slideY(curve: Curves.easeInOut),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Container(
              width: Dimensions.screenwidth(context),
              height: 40,
              alignment: Alignment(-0.8, -0.3),
              margin: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[300],
              ),
              child: Row(children: [
                Padding(
                  padding: getLanguage() == "en"
                      ? EdgeInsets.only(
                          left: 10,
                        )
                      : EdgeInsets.only(
                          right: 10,
                        ),
                  child: Container(
                      margin: EdgeInsets.all(5), child: Icon(Icons.search)),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  "search".tr,
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ]),
            ).animate().fade(begin: 0.1, end: 1, duration: 1000.ms),
          ),
        ],
      ),
    );
  }
}
