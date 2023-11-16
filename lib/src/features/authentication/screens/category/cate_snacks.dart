import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/product/productSnacksScreen.dart';

class SnacksScreen extends StatefulWidget {
  SnacksScreen({super.key});

  @override
  State<SnacksScreen> createState() => _SnacksScreenState();
}

class _SnacksScreenState extends State<SnacksScreen> {
  List<Map<String, dynamic>> snackslist = [
    {
      "color": categoriesFirstColor,
      "image": snacks1,
      "imageRs": rupees,
      "title": "Khatta mitha",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesSecondColor,
      "ftitle": "loreim ipsum ",
      "fsub": "40% OFF",
      "offer": "GROCERY40",
      "fcontent": "Lorem Ipsum is \nsimply"
    },
    {
      "color": categoriesFourColor,
      "image": snacks2,
      "imageRs": rupees,
      "title": "Cheetos",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesThirdColor,
      "image": snacks3,
      "imageRs": rupees,
      "title": "Party mix",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": snacks4,
      "imageRs": rupees,
      "title": "Chips",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFiveColor,
      "image": snacks5,
      "imageRs": rupees,
      "title": "Maggie ",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": snacks6,
      "imageRs": rupees,
      "title": "Lay's",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSevenColor,
      "image": snacks7,
      "imageRs": rupees,
      "title": "Tedhe medhe",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categorieselevenColor,
      "image": snacks8,
      "imageRs": rupees,
      "title": "Pingles",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesThirdColor,
      "image": snacks9,
      "imageRs": rupees,
      "title": "Rings",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFiveColor,
      "image": snacks10,
      "imageRs": rupees,
      "title": "Doritos",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": snacks11,
      "imageRs": rupees,
      "title": "Hot Chips",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesSevenColor,
      "image": snacks12,
      "imageRs": rupees,
      "title": "Pasta",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categorieselevenColor,
      "image": snacks13,
      "imageRs": rupees,
      "title": "Khata mitha ",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": snacks14,
      "imageRs": rupees,
      "title": "Shin cup",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesThirdColor,
      "image": snacks15,
      "imageRs": rupees,
      "title": "Doritos",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {"color": categoriesSecondColor, "fimage": snacks16, "offer": "GROCERY40"},
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
          itemCount: snackslist.length,
          itemBuilder: (context, index) {
            return Stack(children: [
              Container(
                decoration: BoxDecoration(
                  color: snackslist[index]["color"],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          if (snackslist[index]["image"] != null &&
                              snackslist[index]["image"] is String)
                            Image(
                              height: 148.h,
                              width: 187.w,
                              image:
                                  AssetImage(snackslist[index]["image"] ?? ""),
                            )
                          else if (snackslist[index]["fimage"] != null &&
                              snackslist[index]["fimage"] is String)
                            Image(
                              height: 50.h,
                              width: 150.w,
                              image:
                                  AssetImage(snackslist[index]["fimage"] ?? ""),
                            )
                          else
                            Text("")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (snackslist[index]["title"] != null &&
                              snackslist[index]["title"] is String)
                            Text(snackslist[index]["title"] ?? "",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24))
                          else
                            Column(
                              children: [
                                Center(
                                  child: Text(
                                    snackslist[index]["ftitle"] ??
                                        "", // Provide a default value or handle null case
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    snackslist[index]["fsub"] ??
                                        "", // Provide a default value or handle null case
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          if (snackslist[index]["subtitle"] != null &&
                              snackslist[index]["subtitle"] is String)
                            Text(snackslist[index]["subtitle"] ?? "",
                                style: const TextStyle(
                                    fontSize: 16, color: toOnBoardText2))
                          else
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
                                      snackslist[index]["offer"] ??
                                          "", // Provide a default value or handle null case
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                if (snackslist[index]["fcontent"] != null &&
                                    snackslist[index]["fcontent"] is String)
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Center(
                                        child: Text(
                                      snackslist[index]["fcontent"] ?? "",
                                      style:
                                          TextStyle(color: Color(0xff707070)),
                                    )),
                                  )
                                else
                                  Center(
                                      child: Text(
                                    snackslist[index]["fcontent"] ?? "",
                                    style: TextStyle(color: Color(0xff707070)),
                                  ))
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
                          if (snackslist[index]["imageRs"] != null &&
                              snackslist[index]["imageRs"] is String)
                            Image(
                              image: AssetImage(
                                  snackslist[index]["imageRs"] ?? ""),
                            )
                          else
                            Text(""),
                          if (snackslist[index]["price"] != null &&
                              snackslist[index]["price"] is int)
                            Text(
                              snackslist[index]["price"].toString() ??
                                  "", // Use the ?. operator to handle null
                              style: const TextStyle(color: Colors.black),
                            )
                          else
                            Text(""),
                          70.horizontalSpace,
                          Text(
                            snackslist[index]["peiece"] ?? "",
                            style: const TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    10.verticalSpace,
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
                              builder: (context) => ProductSnacksPage(
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
