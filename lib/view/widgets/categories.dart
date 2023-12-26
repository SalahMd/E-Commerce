// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sorder/core/constants/images.dart';
import 'package:sorder/core/functions/getlanguage.dart';

class Categories extends StatelessWidget {
  final int num_categories;
  final data;
  List images = [
    Images.clothesimage,
    Images.accessoriesimage,
    Images.electronicsimage,
    Images.furnishedimage,
    Images.healthimage,
    
  ];
  double categoriespace = 90;
  var categorieTextStyle = TextStyle(color: Colors.grey[800], fontSize: 14);

   Categories({super.key, required this.num_categories,required this.data});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10.0,),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) =>SizedBox(width: 15,) ,
          itemCount: num_categories,
          itemBuilder: (context, index) => 
           Container(
            margin: EdgeInsets.symmetric(vertical: 2,horizontal: 2),
            width: categoriespace,
            height: categoriespace,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.orange,
                  width: 2,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignOutside),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.fill,
                      color: Colors.orange,
                    )),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Text(getLanguage() == "en"?"${data[index]['name_en']}":"${data[index]['name_ar']}", style: categorieTextStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}







// Padding(padding: EdgeInsets.only(left: 20)),
//               Container(
//                 width: categoriespace,
//                 height: categoriespace,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                       color: Colors.orange,
//                       width: 2,
//                       style: BorderStyle.solid,
//                       strokeAlign: BorderSide.strokeAlignOutside),
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                         width: 30,
//                         height: 30,
//                         child: Image.asset(
//                           Images.accessoriesimage,
//                           fit: BoxFit.fill,
//                           color: Colors.orange,
//                         )),
//                     Padding(padding: EdgeInsets.only(top: 5)),
//                     Text("accessories".tr, style: categorieTextStyle),
//                   ],
//                 ),
//               ),
//               Padding(padding: EdgeInsets.only(left: 20)),
//               Container(
//                 width: categoriespace,
//                 height: categoriespace,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                       color: Colors.orange,
//                       width: 2,
//                       style: BorderStyle.solid,
//                       strokeAlign: BorderSide.strokeAlignOutside),
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                         width: 30,
//                         height: 30,
//                         child: Image.asset(
//                           Images.electronicsimage,
//                           fit: BoxFit.fill,
//                           color: Colors.orange,
//                         )),
//                     Padding(padding: EdgeInsets.only(top: 5)),
//                     Text("electronics".tr, style: categorieTextStyle),
//                   ],
//                 ),
//               ),
//               Padding(padding: EdgeInsets.only(left: 20)),
//               Container(
//                 width: categoriespace,
//                 height: categoriespace,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                       color: Colors.orange,
//                       width: 2,
//                       style: BorderStyle.solid,
//                       strokeAlign: BorderSide.strokeAlignOutside),
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                         width: 30,
//                         height: 30,
//                         child: Image.asset(
//                           Images.furnishedimage,
//                           fit: BoxFit.fill,
//                         )),
//                     Padding(padding: EdgeInsets.only(top: 5)),
//                     Text("furniture".tr, style: categorieTextStyle),
//                   ],
//                 ),
//               ),
//               Padding(padding: EdgeInsets.only(left: 20)),
//               Container(
//                   width: categoriespace,
//                   height: categoriespace,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                         color: Colors.orange,
//                         width: 2,
//                         style: BorderStyle.solid,
//                         strokeAlign: BorderSide.strokeAlignOutside),
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                   child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                             width: 30,
//                             height: 30,
//                             child: Image.asset(
//                               Images.healthimage,
//                               fit: BoxFit.fill,
//                               color: Colors.orange,
//                             )),
//                         Padding(padding: EdgeInsets.only(top: 5)),
//                         Text("health".tr, style: categorieTextStyle),
//                       ]))