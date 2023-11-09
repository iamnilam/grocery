import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/category/categoristab.dart';
import 'package:grocery/src/features/authentication/screens/product/productScreen.dart';

class BeveragesScreen extends StatefulWidget {
  BeveragesScreen({super.key});

  @override
  State<BeveragesScreen> createState() => _BeveragesScreenState();
}

class _BeveragesScreenState extends State<BeveragesScreen> {
  List<Map<String, dynamic>> veglist = [
    {
      "color": categoriesFirstColor,
      "image": beverages1,
      "imageRs": rupees,
      "title": "Pepsi can",
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
      "image": beverages2,
      "imageRs": rupees,
      "title": "sprite can",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesThirdColor,
      "image": beverages3,
      "imageRs": rupees,
      "title": "Fanta can",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": beverages4,
      "imageRs": rupees,
      "title": "soft cans",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFiveColor,
      "image": beverages5,
      "imageRs": rupees,
      "title": "Drinks",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": beverages6,
      "imageRs": rupees,
      "title": "Coca cola",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSevenColor,
      "image": beverages7,
      "imageRs": rupees,
      "title": "RedBull",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categorieselevenColor,
      "image": beverages8,
      "imageRs": rupees,
      "title": "Cock & Pepsi",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesThirdColor,
      "image": beverages9,
      "imageRs": rupees,
      "title": "Soft drink kit",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFiveColor,
      "image": beverages10,
      "imageRs": rupees,
      "title": "fanta-cock-spirit",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": beverages11,
      "imageRs": rupees,
      "title": "Cock & Pepsi",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesSevenColor,
      "image": beverages12,
      "imageRs": rupees,
      "title": "Trio of soft drink",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categorieselevenColor,
      "image": beverages13,
      "imageRs": rupees,
      "title": "Cocacola can",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": beverages14,
      "imageRs": rupees,
      "title": "Pepsi",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesThirdColor,
      "image": beverages15,
      "imageRs": rupees,
      "title": "RedBull ",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesFiveColor,
      "image": beverages16,
      "title": "Snacks",
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
