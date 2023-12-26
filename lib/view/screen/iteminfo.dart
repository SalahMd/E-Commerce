import 'package:sorder/controller/homepagecontroller.dart';
import 'package:sorder/controller/itemcontroller.dart';
import 'package:sorder/core/constants/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sorder/core/constants/dimensions.dart';
import 'package:sorder/core/constants/images.dart';

class ItemInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomePageControllerImp());
    Get.put(ItemControllerImp());
    return GetBuilder<ItemControllerImp>(
      builder: (controllerImp) => Scaffold(
          //backgroundColor: Colors.amber,
          body: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                width: Dimensions.screenwidth(context),
                height: 300,
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    child: Image.asset(
                      Images.productsimage0,
                      fit: BoxFit.fill,
                    ))),
            Container(
              width: Dimensions.screenwidth(context),
              height: Dimensions.screenHeight(context) - 400,
              margin: EdgeInsets.only(left: 5, bottom: 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text("${controller.itemInfo.last['item_name_en']}",
                        style: TextStyles.itemtitle),
                    SizedBox(
                      height: 10,
                    ),
                    Text("${controller.itemInfo.last['description_en']}",
                        style: TextStyles.itembody),
                    //Padding(padding: EdgeInsets.only(top: 33)),
                  ]),
            ),
            Container(
              width: Dimensions.screenwidth(context),
              margin: EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 3,
                    child: InkWell(
                        child: Container(
                      alignment: Alignment.center,
                      width: Dimensions.screenwidth(context) / 1.5,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange),
                      child: Text(
                        "Add to cart",
                        style: TextStyles.textbuttonstyle,
                      ),
                    )),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              flex: 1,
                              child: IconButton(
                                onPressed: () {
                                  controllerImp.changeCounter(false);
                                },
                                icon: Icon(
                                  Icons.indeterminate_check_box_outlined,
                                  color: Colors.amber,
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Text(
                                "${controllerImp.counter}",
                                textAlign: TextAlign.center,
                              )),
                          Expanded(
                              flex: 1,
                              child: IconButton(
                                onPressed: () {
                                  controllerImp.changeCounter(true);
                                },
                                icon: Icon(Icons.add_box_outlined,
                                    color: Colors.amber),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ])),
    );
  }
}
