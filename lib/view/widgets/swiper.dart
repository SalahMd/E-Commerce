import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sorder/core/constants/dimensions.dart';

class Swiper extends StatelessWidget {
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: <Widget>[
        Stack(
          children: [
            Container(
              width: Dimensions.screenwidth(context) - 70,
              height: 170,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange, width: 2),
                borderRadius: BorderRadius.circular(20),
                // color: Colors.orange
              ),
            ),
            Positioned(
              //alignment: Alignment.centerRight,
              top: 0,
              right:0,
              child: Container(
                  width: (Dimensions.screenwidth(context) - 70) / 1.6,
                  height: 170,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        "images/product0.png",
                        fit: BoxFit.fill,
                      ))),
            ),
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: (Dimensions.screenwidth(context) - 70) / 2.2,
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      color: Colors.orange),
                  child: Column(
                    children: [
                      Text(
                        "Discount",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("20%",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text("Order before 13/9",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                )),
          ],
        ),
        Stack(
          children: [
            Container(
              width: Dimensions.screenwidth(context) - 70,
              height: 170,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange, width: 2),
                borderRadius: BorderRadius.circular(20),
                // color: Colors.orange
              ),
              // child: Positioned(
              //     left: -30,
              //     child: Balls(
              //       Height: 90,
              //       Width: 90,
              //     )),
            ),
            Positioned(
              top: 0,
              right:0,
              child: Container(
                  width: (Dimensions.screenwidth(context) - 70) / 1.6,
                  height: 170,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        "images/product3.jpg",
                        fit: BoxFit.fill,
                      ))),
            ),
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: (Dimensions.screenwidth(context) - 70) / 2.2,
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      color: Colors.orange),
                  child: Column(
                    children: [
                      Text(
                        "Discount",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("20%",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text("Order before 13/9",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ],
      options: CarouselOptions(
        autoPlay: true,
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        autoPlayInterval: const Duration(seconds: 3),
        aspectRatio: 2.2,
        enlargeFactor: 2,
        initialPage: 0,
      ),
    );
  }
}
