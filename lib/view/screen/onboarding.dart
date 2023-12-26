import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sorder/controller/onboardingcontroller.dart';
import 'package:sorder/core/constants/buttons.dart';

import '../../core/constants/textstyle.dart';
import '../../data/datasource/static/static.dart';

class onbording extends GetView<onboardingcontrollerimp> {
  @override
  Widget build(BuildContext context) {
    Get.put(onboardingcontrollerimp());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: (val) {
                  controller.onPageChanged(val);
                },
                itemCount: Onbordingmodel.length,
                itemBuilder: (context, int i) => Column(
                
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 80)),
                        Text(
                          Onbordingmodel[i].title!,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                       Padding(padding: EdgeInsets.only(top: 10)),
                        Container(
                          width: 300,
                          height: 230,
                          child: Onbordingmodel[i].animation,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40),
                        ),
                        Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: Text(
                              Onbordingmodel[i].body!,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyText1,
                            )),
                      ],
                    )),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  GetBuilder<onboardingcontrollerimp>(
                    builder: (controller) => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                            Onbordingmodel.length,
                            (index) => AnimatedContainer(
                                  duration: const Duration(milliseconds: 700),
                                  width: controller.currentPage == index
                                      ? 20
                                      : 8,
                                  height: 8,
                                  margin: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius:
                                          BorderRadius.circular(20)),
                                )),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 30)),
                  ElevatedButton(
                    onPressed: () {
                      controller.next();
                    },
                    child: Text("continuebutton".tr,
                        style: TextStyles.textbuttonstyle),
                    style: buttonseapp.elevatedButtonStyle,
                  ),
                  TextButton(
                      onPressed: () {
                        //Get.to();
                        controller.currentPage = 4;
                        controller.next();
                      },
                      child: Text(
                        "skipbutton".tr,
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
