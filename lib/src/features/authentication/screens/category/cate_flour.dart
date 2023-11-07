import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart'; // Import StaggeredGridView
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/category/categoristab.dart';

class FlourScreen extends StatefulWidget {
  FlourScreen({Key? key}) : super(key: key);

  @override
  State<FlourScreen> createState() => _FlourScreenState();
}

class _FlourScreenState extends State<FlourScreen> {
  List<Map<String, dynamic>> veglist = [
    {
      "color": categoriesFirstColor,
      "image": catekiwi,
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
      "title": "Avacado",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFiveColor,
      "image": catePapaya,
      "title": "Papaya",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": cateMango,
      "title": "Mango",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSevenColor,
      "image": cateStrawberry,
      "title": "Strawberry ",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": cateGraps,
      "title": "Graps",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesEightColor,
      "image": cateBlueberrie,
      "title": "Blueberrie",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesThirdColor,
      "image": cateAvacado,
      "title": "Avacado",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFirstColor,
      "image": cateChikoo,
      "title": "Chikoo",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": cateMango,
      "title": "Mango",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFirstColor,
      "image": cateBanana,
      "title": "Banana",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesFirstColor,
      "image": catekiwi,
      "title": "Pineapple",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesSecondColor,
      "image": cateStrawberry,
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

  String ruppess = "assets/images/rupees.png";

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
                  veglist[index]["image"] != null
                      ? Image(
                          height: 148.h,
                          width: 187.w,
                          image: AssetImage(veglist[index]["image"] ?? ""),
                        )
                      : const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "loreim ipsum",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        veglist[index]["title"] != null
                            ? Text(veglist[index]["title"] ?? "",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24))
                            : Center(
                                child: Text(
                                veglist[index]["offer"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Colors.black),
                              )),
                        veglist[index]["subtitle"] != null
                            ? Text(veglist[index]["subtitle"] ?? "",
                                style: const TextStyle(
                                    fontSize: 16, color: toOnBoardText2))
                            : Container(
                                height: 30.h,
                                width: 142.w,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(color: Color(0xff10CE7B))
                                    ]),
                                child: const Center(
                                    child: Text(
                                  "GROCERY40",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                ))),
                      ],
                    ),
                  ),
                  10.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const Image(
                          image: AssetImage("assets/images/rupees.png"),
                        ),
                        Text(
                          veglist[index]["price"].toString(),
                          style: const TextStyle(color: Colors.black),
                        ),
                        70.horizontalSpace,
                        Text(
                          veglist[index]["peiece"],
                          style: const TextStyle(color: Colors.black),
                        )
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
