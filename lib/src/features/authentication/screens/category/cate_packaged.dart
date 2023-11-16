import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/product/productfoodScreen.dart';

class PackagedFoodScreen extends StatefulWidget {
  PackagedFoodScreen({super.key});

  @override
  State<PackagedFoodScreen> createState() => _PackagedFoodScreenState();
}

class _PackagedFoodScreenState extends State<PackagedFoodScreen> {
  List<Map<String, dynamic>> packagedlist = [
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
      "title": "loreim ipsum ",
      "subtitle": "40% OFF",
      "offer": "GROCERY40"
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
      "color": categoriesSevenColor,
      "image": catekiwi,
      "imageRs": rupees,
      "title": "Pineapple",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categorieselevenColor,
      "image": cateStrawberry,
      "imageRs": rupees,
      "title": "Strawberry ",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesSecondColor,
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
          itemCount: packagedlist.length,
          itemBuilder: (context, index) {
            return Stack(children: [
              Container(
                decoration: BoxDecoration(
                  color: packagedlist[index]["color"],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          if (packagedlist[index]["image"] != null &&
                              packagedlist[index]["image"] is String)
                            Image(
                              height: 148.h,
                              width: 187.w,
                              image: AssetImage(
                                  packagedlist[index]["image"] ?? ""),
                            )
                          else if (packagedlist[index]["fimage"] != null &&
                              packagedlist[index]["fimage"] is String)
                            Image(
                              height: 50.h,
                              width: 150.w,
                              image: AssetImage(
                                  packagedlist[index]["fimage"] ?? ""),
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
                          if (packagedlist[index]["title"] != null &&
                              packagedlist[index]["title"] is String)
                            Text(packagedlist[index]["title"] ?? "",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24))
                          else
                            Column(
                              children: [
                                Center(
                                  child: Text(
                                    packagedlist[index]["ftitle"] ??
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
                                    packagedlist[index]["fsub"] ??
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
                          if (packagedlist[index]["subtitle"] != null &&
                              packagedlist[index]["subtitle"] is String)
                            Text(packagedlist[index]["subtitle"] ?? "",
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
                                      packagedlist[index]["offer"] ??
                                          "", // Provide a default value or handle null case
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                if (packagedlist[index]["fcontent"] != null &&
                                    packagedlist[index]["fcontent"] is String)
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Center(
                                        child: Text(
                                      packagedlist[index]["fcontent"] ?? "",
                                      style:
                                          TextStyle(color: Color(0xff707070)),
                                    )),
                                  )
                                else
                                  Center(
                                      child: Text(
                                    packagedlist[index]["fcontent"] ?? "",
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
                          if (packagedlist[index]["imageRs"] != null &&
                              packagedlist[index]["imageRs"] is String)
                            Image(
                              image: AssetImage(
                                  packagedlist[index]["imageRs"] ?? ""),
                            )
                          else
                            Text(""),
                          if (packagedlist[index]["price"] != null &&
                              packagedlist[index]["price"] is int)
                            Text(
                              packagedlist[index]["price"].toString() ??
                                  "", // Use the ?. operator to handle null
                              style: const TextStyle(color: Colors.black),
                            )
                          else
                            Text(""),
                          70.horizontalSpace,
                          Text(
                            packagedlist[index]["peiece"] ?? "",
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
                              builder: (context) => ProductFoodPage(
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
