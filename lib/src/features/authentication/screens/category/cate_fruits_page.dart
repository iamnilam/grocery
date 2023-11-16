import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/product/productFruitsScreen.dart';

class FruitsScreen extends StatefulWidget {
  FruitsScreen({super.key});

  @override
  State<FruitsScreen> createState() => _FruitsScreenState();
}

class _FruitsScreenState extends State<FruitsScreen> {
  List<Map<String, dynamic>> fruitslist = [
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
      "color": categoriesSecondColor,
      "ftitle": "loreim ipsum ",
      "fsub": "40% OFF",
      "offer": "GROCERY40",
      "fcontent": "Lorem Ipsum is \nsimply"
    },
    {
      "color": categoriesFourColor,
      "image": cateAvacado,
      "imageRs": rupees,
      "title": "Avacado",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesThirdColor,
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
      "color": categoriesFiveColor,
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
      "color": categoriesSevenColor,
      "image": cateBlueberrie,
      "imageRs": rupees,
      "title": "Blueberrie",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categorieselevenColor,
      "image": cateAvacado,
      "imageRs": rupees,
      "title": "Avacado",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesThirdColor,
      "image": cateChikoo,
      "imageRs": rupees,
      "title": "Chikoo",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFiveColor,
      "image": cateMango,
      "imageRs": rupees,
      "title": "Mango",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": cateBanana,
      "imageRs": rupees,
      "title": "Banana",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": catekiwi,
      "imageRs": rupees,
      "title": "Pineapple",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesThirdColor,
      "image": cateStrawberry,
      "imageRs": rupees,
      "title": "Strawberry ",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {"color": categoriesSecondColor, "fimage": snacks, "offer": "GROCERY40"},
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
          itemCount: fruitslist.length,
          itemBuilder: (context, index) {
            return Stack(children: [
              Container(
                decoration: BoxDecoration(
                  color: fruitslist[index]["color"],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          if (fruitslist[index]["image"] != null &&
                              fruitslist[index]["image"] is String)
                            Image(
                              height: 148.h,
                              width: 187.w,
                              image:
                                  AssetImage(fruitslist[index]["image"] ?? ""),
                            )
                          else if (fruitslist[index]["fimage"] != null &&
                              fruitslist[index]["fimage"] is String)
                            Image(
                              height: 50.h,
                              width: 150.w,
                              image:
                                  AssetImage(fruitslist[index]["fimage"] ?? ""),
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
                          if (fruitslist[index]["title"] != null &&
                              fruitslist[index]["title"] is String)
                            Text(fruitslist[index]["title"] ?? "",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24))
                          else
                            Column(
                              children: [
                                Center(
                                  child: Text(
                                    fruitslist[index]["ftitle"] ??
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
                                    fruitslist[index]["fsub"] ??
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
                          if (fruitslist[index]["subtitle"] != null &&
                              fruitslist[index]["subtitle"] is String)
                            Text(fruitslist[index]["subtitle"] ?? "",
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
                                      fruitslist[index]["offer"] ??
                                          "", // Provide a default value or handle null case
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                if (fruitslist[index]["fcontent"] != null &&
                                    fruitslist[index]["fcontent"] is String)
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Center(
                                        child: Text(
                                      fruitslist[index]["fcontent"] ?? "",
                                      style:
                                          TextStyle(color: Color(0xff707070)),
                                    )),
                                  )
                                else
                                  Center(
                                      child: Text(
                                    fruitslist[index]["fcontent"] ?? "",
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
                          if (fruitslist[index]["imageRs"] != null &&
                              fruitslist[index]["imageRs"] is String)
                            Image(
                              image: AssetImage(
                                  fruitslist[index]["imageRs"] ?? ""),
                            )
                          else
                            Text(""),
                          if (fruitslist[index]["price"] != null &&
                              fruitslist[index]["price"] is int)
                            Text(
                              fruitslist[index]["price"].toString() ??
                                  "", // Use the ?. operator to handle null
                              style: const TextStyle(color: Colors.black),
                            )
                          else
                            Text(""),
                          70.horizontalSpace,
                          Text(
                            fruitslist[index]["peiece"] ?? "",
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
                              builder: (context) => ProductFruitsPage(
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
