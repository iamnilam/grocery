import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart'; // Import StaggeredGridView
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/product/productScreen.dart';

class FlourScreen extends StatefulWidget {
  FlourScreen({Key? key}) : super(key: key);

  @override
  State<FlourScreen> createState() => _FlourScreenState();
}

class _FlourScreenState extends State<FlourScreen> {
  List<Map<String, dynamic>> flourList = [
    {
      "color": categoriesFirstColor,
      "image": flour1,
      "imageRs": rupees,
      "title": "Corn",
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
      "image": flour2,
      "imageRs": rupees,
      "title": "Tirupati Rice",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesThirdColor,
      "image": flour3,
      "imageRs": rupees,
      "title": "Elite atta",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": flour4,
      "imageRs": rupees,
      "title": "Oats",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFiveColor,
      "image": flour5,
      "imageRs": rupees,
      "title": "Induz rice ",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": flour6,
      "imageRs": rupees,
      "title": "Fortune rice",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSevenColor,
      "image": flour7,
      "imageRs": rupees,
      "title": "Corn flour",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categorieselevenColor,
      "image": flour8,
      "imageRs": rupees,
      "title": "Chakki atta",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesThirdColor,
      "image": flour9,
      "imageRs": rupees,
      "title": "Corn",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFiveColor,
      "image": flour10,
      "imageRs": rupees,
      "title": "Hershes",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": flour11,
      "imageRs": rupees,
      "title": "Elite atta",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesSevenColor,
      "image": flour12,
      "imageRs": rupees,
      "title": "Oats",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categorieselevenColor,
      "image": flour13,
      "imageRs": rupees,
      "title": "Induz rice",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": flour14,
      "imageRs": rupees,
      "title": "Shin cup",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesThirdColor,
      "image": flour15,
      "imageRs": rupees,
      "title": "Oats",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {"color": categoriesSecondColor, "image": flour16, "offer": "GROCERY40"},
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
          itemCount: flourList.length,
          itemBuilder: (context, index) {
            return Stack(children: [
              Container(
                decoration: BoxDecoration(
                  color: flourList[index]["color"],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    if (flourList[index]["image"] != null &&
                        flourList[index]["image"] is String)
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Image(
                          height: 148.h,
                          width: 187.w,
                          image: AssetImage(flourList[index]["image"] ?? ""),
                        ),
                      )
                    else
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          flourList[index]["titleofffer"] ??
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
                          if (flourList[index]["title"] != null &&
                              flourList[index]["title"] is String)
                            Text(flourList[index]["title"] ?? "",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24))
                          else
                            Center(
                              child: Text(
                                flourList[index]["titleofffer"] ??
                                    "", // Provide a default value or handle null case
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          if (flourList[index]["subtitle"] != null &&
                              flourList[index]["subtitle"] is String)
                            Text(flourList[index]["subtitle"] ?? "",
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
                                      flourList[index]["offer"] ??
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
                          if (flourList[index]["imageRs"] != null &&
                              flourList[index]["imageRs"] is String)
                            Image(
                              image:
                              AssetImage(flourList[index]["imageRs"] ?? ""),
                            )
                          else
                            Text(""),
                          if (flourList[index]["price"] != null &&
                              flourList[index]["price"] is int)
                            Text(
                              flourList[index]["price"].toString() ??
                                  "", // Use the ?. operator to handle null
                              style: const TextStyle(color: Colors.black),
                            )
                          else
                            Text(""),
                          70.horizontalSpace,
                          Text(
                            flourList[index]["peiece"] ?? "",
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
