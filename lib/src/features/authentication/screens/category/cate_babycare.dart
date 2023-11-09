import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/category/categoristab.dart';
import 'package:grocery/src/features/authentication/screens/product/productScreen.dart';

class BabyCareScreen extends StatefulWidget {
  BabyCareScreen({super.key});

  @override
  State<BabyCareScreen> createState() => _BabyCareScreenState();
}

class _BabyCareScreenState extends State<BabyCareScreen> {
  List<Map<String, dynamic>> babyCarelist = [
    {
      "color": categoriesFirstColor,
      "image": babycare1,
      "imageRs": rupees,
      "title": "Baby care kit",
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
      "image": babycare2,
      "imageRs": rupees,
      "title": "bay shampo",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesThirdColor,
      "image": babycare3,
      "imageRs": rupees,
      "title": "baby soap",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": babycare4,
      "imageRs": rupees,
      "title": "Baby care kit",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFiveColor,
      "image": babycare5,
      "imageRs": rupees,
      "title": "Wipes",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": babycare6,
      "imageRs": rupees,
      "title": "Baby lotion",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSevenColor,
      "image": babycare7,
      "imageRs": rupees,
      "title": "Baby oil",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categorieselevenColor,
      "image": babycare8,
      "imageRs": rupees,
      "title": "Himalaya baby kit",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesThirdColor,
      "image": babycare9,
      "imageRs": rupees,
      "title": "baby care kit",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFiveColor,
      "image": babycare10,
      "imageRs": rupees,
      "title": "baby care kit",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": babycare11,
      "imageRs": rupees,
      "title": "Bodywash",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesSevenColor,
      "image": babycare12,
      "imageRs": rupees,
      "title": "Vanish gold",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categorieselevenColor,
      "image": babycare13,
      "imageRs": rupees,
      "title": "Shampoo",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": babycare14,
      "imageRs": rupees,
      "title": "body lotion",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesThirdColor,
      "image": babycare15,
      "imageRs": rupees,
      "title": "baby soap",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {"color": categoriesFiveColor, "image": babycare16, "offer": "GROCERY40"},
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
          itemCount: babyCarelist.length,
          itemBuilder: (context, index) {
            return Stack(children: [
              Container(
                decoration: BoxDecoration(
                  color: babyCarelist[index]["color"],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    if (babyCarelist[index]["image"] != null &&
                        babyCarelist[index]["image"] is String)
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Image(
                          height: 148.h,
                          width: 187.w,
                          image: AssetImage(babyCarelist[index]["image"] ?? ""),
                        ),
                      )
                    else
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          babyCarelist[index]["titleofffer"] ??
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
                          if (babyCarelist[index]["title"] != null &&
                              babyCarelist[index]["title"] is String)
                            Text(babyCarelist[index]["title"] ?? "",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24))
                          else
                            Center(
                              child: Text(
                                babyCarelist[index]["titleofffer"] ??
                                    "", // Provide a default value or handle null case
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          if (babyCarelist[index]["subtitle"] != null &&
                              babyCarelist[index]["subtitle"] is String)
                            Text(babyCarelist[index]["subtitle"] ?? "",
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
                                      babyCarelist[index]["offer"] ??
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
                          if (babyCarelist[index]["imageRs"] != null &&
                              babyCarelist[index]["imageRs"] is String)
                            Image(
                              image:
                              AssetImage(babyCarelist[index]["imageRs"] ?? ""),
                            )
                          else
                            Text(""),
                          if (babyCarelist[index]["price"] != null &&
                              babyCarelist[index]["price"] is int)
                            Text(
                              babyCarelist[index]["price"].toString() ??
                                  "", // Use the ?. operator to handle null
                              style: const TextStyle(color: Colors.black),
                            )
                          else
                            Text(""),
                          70.horizontalSpace,
                          Text(
                            babyCarelist[index]["peiece"] ?? "",
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
