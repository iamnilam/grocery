import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/category/categoristab.dart';

class BreakFastScreen extends StatefulWidget {
  BreakFastScreen({super.key});

  @override
  State<BreakFastScreen> createState() => _BreakFastScreenState();
}

class _BreakFastScreenState extends State<BreakFastScreen> {
  List<Map<String, dynamic>> veglist = [
    {
      "color": categoriesFirstColor,
      "image": catekiwi,
      "imageRs": rupees,
      "title": "Kiwi",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "title": "loreim ipsum ",
      "subtitle": "40% OFF",
      "offer": "GROCERY40"
    },
    {
      "color": categoriesThirdColor,
      "image": cateAvacado,
      "imageRs": rupees,
      "title": "Avacado",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFiveColor,
      "image": catePapaya,
      "imageRs": rupees,
      "title": "Papaya",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": cateMango,
      "imageRs": rupees,
      "title": "Mango",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSevenColor,
      "image": cateStrawberry,
      "imageRs": rupees,
      "title": "Strawberry ",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": cateGraps,
      "imageRs": rupees,
      "title": "Graps",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesEightColor,
      "image": cateBlueberrie,
      "imageRs": rupees,
      "title": "Blueberrie",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesThirdColor,
      "image": cateAvacado,
      "imageRs": rupees,
      "title": "Avacado",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFirstColor,
      "image": cateChikoo,
      "imageRs": rupees,
      "title": "Chikoo",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": cateMango,
      "imageRs": rupees,
      "title": "Mango",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFirstColor,
      "image": cateBanana,
      "imageRs": rupees,
      "title": "Banana",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesFirstColor,
      "image": catekiwi,
      "imageRs": rupees,
      "title": "Pineapple",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesSecondColor,
      "image": cateStrawberry,
      "imageRs": rupees,
      "title": "Strawberry ",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "titleofffer": "loreim ipsum ",
      "subtitleoffer": "40% OFF",
      "offer": "GROCERY40"
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
            return Container(
              decoration: BoxDecoration(
                color: veglist[index]["color"],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  if (veglist[index]["image"] != null && veglist[index]["image"] is String)
                    Image(
                      height: 148.h,
                      width: 187.w,
                      image: AssetImage(veglist[index]["image"] ?? ""),
                    )
                  else
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        veglist[index]["titleofffer"] ?? "", // Provide a default value or handle null case
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
                        if (veglist[index]["title"] != null && veglist[index]["title"] is String)
                          Text(veglist[index]["title"] ?? "",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24))
                        else
                          Center(
                            child: Text(
                              veglist[index]["titleofffer"] ?? "", // Provide a default value or handle null case
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        if (veglist[index]["subtitle"] != null && veglist[index]["subtitle"] is String)
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
                                  boxShadow: [BoxShadow(color: Color(0xff10CE7B))],
                                ),
                                child: Center(
                                  child: Text(
                                    veglist[index]["offer"] ?? "", // Provide a default value or handle null case
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
                        if (veglist[index]["imageRs"] != null && veglist[index]["imageRs"] is String)
                          Image(
                            image: AssetImage(veglist[index]["imageRs"] ?? ""),
                          )
                        else
                          Text(""),
                        if (veglist[index]["price"] != null && veglist[index]["price"] is int)
                          Text(
                            veglist[index]["price"].toString() ?? "", // Use the ?. operator to handle null
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

            );
          },
        ),
      ),
    );
  }
}



