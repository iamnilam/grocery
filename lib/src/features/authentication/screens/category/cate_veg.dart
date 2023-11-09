import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/category/categoristab.dart';
import 'package:grocery/src/features/authentication/screens/product/productScreen.dart';

class VegitablesScreen extends StatefulWidget {
  VegitablesScreen({super.key});

  @override
  State<VegitablesScreen> createState() => _VegitablesScreenState();
}

class _VegitablesScreenState extends State<VegitablesScreen> {
  List<Map<String, dynamic>> veglist = [
    {
      "color": categoriesFirstColor,
      "image": vegetables1,
      "imageRs": rupees,
      "title": "Potato",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesSecondColor,
      "title": "loreim ipsum ",
      "subtitle": "40% OFF",
      "offer": "GROCERY40"
    },
    {
      "color": categoriesFourColor,
      "image": vegetables2,
      "imageRs": rupees,
      "title": "Pumpkin ",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesThirdColor,
      "image": vegetables3,
      "imageRs": rupees,
      "title": "Spinach ",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": vegetables4,
      "imageRs": rupees,
      "title": "Tomato",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFiveColor,
      "image": vegetables5,
      "imageRs": rupees,
      "title": "Carrot ",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": vegetables6,
      "imageRs": rupees,
      "title": "Onion",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSevenColor,
      "image": vegetables7,
      "imageRs": rupees,
      "title": "Brinjal",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categorieselevenColor,
      "image": vegetables8,
      "imageRs": rupees,
      "title": "Raddish",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesThirdColor,
      "image": vegetables9,
      "imageRs": rupees,
      "title": "Cabbage",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFiveColor,
      "image": vegetables10,
      "imageRs": rupees,
      "title": "Capsicum ",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": vegetables11,
      "imageRs": rupees,
      "title": "Beetroot",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesSevenColor,
      "image": vegetables12,
      "imageRs": rupees,
      "title": "Red Cabbage",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categorieselevenColor,
      "image": vegetables13,
      "imageRs": rupees,
      "title": "Mushroom ",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": vegetables14,
      "imageRs": rupees,
      "title": "Coriender ",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesThirdColor,
      "image": vegetables15,
      "imageRs": rupees,
      "title": "Cucumber",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesSecondColor,
      "image": vegetables16,
      "imageRs": rupees,
      "title": "Corn",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesnineColor,
      "image": vegetables17,
      // "imageRs": rupees,
      "title": "Dairy ",
      "subtitle": "Lorem Ipsum is simply",
      // "price": 99,
      // "peiece": "3PC"
    },
  ];

  bool defaultText = true;
  bool loading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          itemCount: veglist.length,
          itemBuilder: (context, index) {
            return Stack(children: [
              Container(
                decoration: BoxDecoration(
                  color: veglist[index]["color"],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    if (veglist[index]["image"] != null &&
                        veglist[index]["image"] is String)
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Image(
                          height: 148.h,
                          width: 187.w,
                          image: AssetImage(veglist[index]["image"] ?? ""),
                        ),
                      )
                    else
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          veglist[index]["titleofffer"] ??
                              "", // Provide a default value or handle null case
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (veglist[index]["title"] != null &&
                              veglist[index]["title"] is String)
                            Text(veglist[index]["title"] ?? "",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24))
                          else
                            Center(
                              child: Text(
                                veglist[index]["titleofffer"] ??
                                    "", // Provide a default value or handle null case
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          if (veglist[index]["subtitle"] != null &&
                              veglist[index]["subtitle"] is String)
                            Text(veglist[index]["subtitle"] ?? "",
                                style: const TextStyle(
                                    fontSize: 16, color: toOnBoardText2))
                          else
                            // Container(
                            //   height: 30.h,
                            //   width: 142.w,
                            //   decoration: BoxDecoration(
                            //     color: Colors.white,
                            //     boxShadow: [BoxShadow(color: Color(0xff10CE7B))],
                            //   ),
                            //   child: Center(
                            //     child: Text(
                            //       veglist[index]["subtitleoffer"] ?? "", // Provide a default value or handle null case
                            //       style: TextStyle(
                            //         fontWeight: FontWeight.bold,
                            //         fontSize: 24,
                            //         color: Colors.black,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            Column(
                              children: [
                                Container(
                                  height: 30.h,
                                  width: 142.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(color: Color(0xff10CE7B))
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      veglist[index]["offer"] ??
                                          "", // Provide a default value or handle null case
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                    10.verticalSpace,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          if (veglist[index]["imageRs"] != null &&
                              veglist[index]["imageRs"] is String)
                            Image(
                              image:
                                  AssetImage(veglist[index]["imageRs"] ?? ""),
                            )
                          else
                            Text(""),
                          if (veglist[index]["price"] != null &&
                              veglist[index]["price"] is int)
                            Text(
                              veglist[index]["price"].toString() ??
                                  "", // Use the ?. operator to handle null
                              style: const TextStyle(color: Colors.black),
                            )
                          else
                            Text(""),
                          70.horizontalSpace,
                          Text(
                            veglist[index]["peiece"] ?? "",
                            style: const TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    20.verticalSpace,
                  ],
                ),
              ),
              Positioned(
                  left: 130,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainProductPage(
                                    index: index,
                                  )));
                    },
                    child: Container(
                      width: 44.w,
                      height: 44.h,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(Icons.add),
                    ),
                  ))
            ]);
          },
        ),
      ),
    );
  }
}
