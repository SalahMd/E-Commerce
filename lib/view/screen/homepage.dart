import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sorder/controller/homepagecontroller.dart';
import 'package:sorder/core/class/statusrequest.dart';
import 'package:sorder/core/constants/animations.dart';
import 'package:sorder/core/constants/images.dart';
import 'package:sorder/core/functions/alerts.dart';
import 'package:sorder/core/functions/getlanguage.dart';
import 'package:sorder/view/screen/iteminfo.dart';
import 'package:sorder/view/widgets/categories.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sorder/view/widgets/swiper.dart';
import 'package:sorder/view/widgets/topbar.dart';

class HomePage extends StatelessWidget {
  String language = getLanguage();

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return WillPopScope(
      onWillPop: exitAlert,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<HomePageControllerImp>(
          builder: (controllerImp) => controllerImp.statusRequest ==
                  StatusRequest.loading
              ? Center(
                  child: animations.loading,
                )
              : SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TopBar()
                          .animate()
                          .fade(duration: 1000.ms)
                          .slideY(curve: Curves.easeInOut),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Swiper()
                          .animate()
                          .fade(duration: 1000.ms)
                          .slideY(curve: Curves.easeInOut),
                      Padding(
                          padding: language == "en"
                              ? const EdgeInsets.only(left: 10, top: 10)
                              : const EdgeInsets.only(
                                  top: 10,
                                  right: 10,
                                ),
                          child: Align(
                              alignment: language == "en"
                                  ? Alignment.topLeft
                                  : Alignment.topRight,
                              child: Text(
                                "categories".tr,
                                style: Theme.of(context).textTheme.headline1,
                              ).animate().fade(duration: 700.ms).slideY(
                                  begin: -0.6, curve: Curves.easeInOut))),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                      ),
                      Categories(
                        num_categories: controllerImp.categories.length,
                        data: controllerImp.categories,
                      )
                          .animate()
                          .fade(duration: 1000.ms)
                          .slideX(begin: 0.6, curve: Curves.easeInOutSine),
                      Padding(
                        padding: language == "en"
                            ? EdgeInsets.only(
                                left: 10,
                              )
                            : EdgeInsets.only(right: 10),
                        child: Align(
                            alignment: language == "en"
                                ? Alignment.topLeft
                                : Alignment.topRight,
                            child: Text("popularproducts".tr,
                                    style:
                                        Theme.of(context).textTheme.headline1)
                                .animate()
                                .fade(duration: 700.ms)
                                .slideY(curve: Curves.easeInOut)),
                      ),
                      Container(
                        height: 500,
                        child: GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: controllerImp.items.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    onTap: () {
                                      controllerImp.displayItem(index);
                                    },
                                    child: Container(
                                      height: 160,
                                      margin: EdgeInsets.only(
                                          left: 20, right: 20, bottom: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Column(children: [
                                        Container(
                                          width: double.infinity,
                                          height: 100,
                                          child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(25),
                                                      topRight:
                                                          Radius.circular(25)),
                                              child: Image.asset(
                                                Images.productsimage0,
                                                fit: BoxFit.fill,
                                              )),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 5),
                                        ),
                                        Align(
                                          alignment: language == "en"
                                              ? Alignment.topLeft
                                              : Alignment.topRight,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      language == "en"
                                                          ? "${controllerImp.items[index]['item_name_en']}"
                                                          : "${controllerImp.items[index]['item_name_ar']}",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1,
                                                    ),
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.favorite,
                                                        color: Colors.grey,
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "${controllerImp.items[index]['price']}",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1,
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                  );
                                })
                            .animate()
                            .fade(duration: 700.ms)
                            .slideY(begin: 0.5, curve: Curves.easeInOut),
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
