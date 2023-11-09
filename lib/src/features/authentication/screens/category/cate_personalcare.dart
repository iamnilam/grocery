import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/category/categoristab.dart';
import 'package:grocery/src/features/authentication/screens/product/productScreen.dart';

class PersonalCareScreen extends StatefulWidget {
  PersonalCareScreen({super.key});

  @override
  State<PersonalCareScreen> createState() => _PersonalCareScreenState();
}

class _PersonalCareScreenState extends State<PersonalCareScreen> {
  List<Map<String, dynamic>> personalCarelist = [
    {
      "color": categoriesFirstColor,
      "image": personalCare1,
      "imageRs": rupees,
      "title": "Shampoo",
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
      "image": personalCare2,
      "imageRs": rupees,
      "title": "Dish washer",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesThirdColor,
      "image": personalCare3,
      "imageRs": rupees,
      "title": "Dettol",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": personalCare4,
      "imageRs": rupees,
      "title": "Vanish",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFiveColor,
      "image": personalCare5,
      "imageRs": rupees,
      "title": "Ariel",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": personalCare6,
      "imageRs": rupees,
      "title": "Clin glanz",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSevenColor,
      "image": personalCare7,
      "imageRs": rupees,
      "title": "Body lotion",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categorieselevenColor,
      "image": personalCare8,
      "imageRs": rupees,
      "title": "Nivea soft",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesThirdColor,
      "image": personalCare9,
      "imageRs": rupees,
      "title": "Oriflame",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesFiveColor,
      "image": personalCare10,
      "imageRs": rupees,
      "title": "Dish washer",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC",
    },
    {
      "color": categoriesSixColor,
      "image": personalCare11,
      "imageRs": rupees,
      "title": "Bodywash",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesSevenColor,
      "image": personalCare12,
      "imageRs": rupees,
      "title": "Vanish gold",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categorieselevenColor,
      "image": personalCare13,
      "imageRs": rupees,
      "title": "Shampoo",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": personalCare14,
      "imageRs": rupees,
      "title": "Clin glanz",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesThirdColor,
      "image": personalCare15,
      "imageRs": rupees,
      "title": "Dettol",
      "subtitle": "Lorem Ipsum is simply",
      "price": 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesSecondColor,
      "image": personalCare16,
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
          itemCount: personalCarelist.length,
          itemBuilder: (context, index) {
            return Stack(children: [
              Container(
                decoration: BoxDecoration(
                  color: personalCarelist[index]["color"],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    if (personalCarelist[index]["image"] != null &&
                        personalCarelist[index]["image"] is String)
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Image(
                          height: 148.h,
                          width: 187.w,
                          image: AssetImage(personalCarelist[index]["image"] ?? ""),
                        ),
                      )
                    else
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          personalCarelist[index]["titleofffer"] ??
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
                          if (personalCarelist[index]["title"] != null &&
                              personalCarelist[index]["title"] is String)
                            Text(personalCarelist[index]["title"] ?? "",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24))
                          else
                            Center(
                              child: Text(
                                personalCarelist[index]["titleofffer"] ??
                                    "", // Provide a default value or handle null case
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          if (personalCarelist[index]["subtitle"] != null &&
                              personalCarelist[index]["subtitle"] is String)
                            Text(personalCarelist[index]["subtitle"] ?? "",
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
                                      personalCarelist[index]["offer"] ??
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
                          if (personalCarelist[index]["imageRs"] != null &&
                              personalCarelist[index]["imageRs"] is String)
                            Image(
                              image:
                              AssetImage(personalCarelist[index]["imageRs"] ?? ""),
                            )
                          else
                            Text(""),
                          if (personalCarelist[index]["price"] != null &&
                              personalCarelist[index]["price"] is int)
                            Text(
                              personalCarelist[index]["price"].toString() ??
                                  "", // Use the ?. operator to handle null
                              style: const TextStyle(color: Colors.black),
                            )
                          else
                            Text(""),
                          70.horizontalSpace,
                          Text(
                            personalCarelist[index]["peiece"] ?? "",
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
