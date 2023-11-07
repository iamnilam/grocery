import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/category/categoristab.dart';

class VegitablesScreen extends StatefulWidget {
  VegitablesScreen({super.key});

  @override
  State<VegitablesScreen> createState() => _VegitablesScreenState();
}

class _VegitablesScreenState extends State<VegitablesScreen> {
  List<Map<String, dynamic>> veglist = [
    {
      "color": categoriesFirstColor,
      "image": catekiwi,
      "title": "Kiwi",
      "subtitle": "Lorem Ipsum is simply",
      "price" : 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesSecondColor,
      "random": "loreim ipsum",
      "offer": "40% OFF",
      "price" : 00,
      "price" : 99,
      "height" : 175,
      "peiece": "3PC"
    },
    {
      "color": categoriesThirdColor,
      "image": cateAvacado,
      "title": "Avacado",
      "subtitle": "Lorem Ipsum is simply",
      "price" : 99,
      "peiece": "3PC",
      "height" : 300
    },
    {
      "color": categoriesFiveColor,
      "image": catePapaya,
      "title": "Papaya",
      "subtitle": "Lorem Ipsum is simply",
      "price" : 99,
      "peiece": "3PC",
      "height" : 300
    },
    {
      "color": categoriesSixColor,
      "image": cateMango,
      "title": "Mango",
      "subtitle": "Lorem Ipsum is simply",
      "price" : 99,
      "peiece": "3PC",
      "height" : 300
    },
    {
      "color": categoriesSevenColor,
      "image": cateStrawberry,
      "title": "Strawberry ",
      "subtitle": "Lorem Ipsum is simply",
      "price" : 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": cateGraps,
      "title": "Graps",
      "subtitle": "Lorem Ipsum is simply",
      "price" : 99,
      "peiece": "3PC",
      "height" : 300
    },
    {
      "color": categoriesEightColor,
      "image": cateBlueberrie,
      "title": "Blueberrie",
      "subtitle": "Lorem Ipsum is simply",
      "price" : 99,
      "peiece": "3PC",
      "height" : 300
    },
    {
      "color": categoriesThirdColor,
      "image": cateAvacado,
      "title": "Avacado",
      "subtitle": "Lorem Ipsum is simply",
      "price" : 99,
      "peiece": "3PC",
      "height" : 300
    },
    {
      "color": categoriesFirstColor,
      "image": cateChikoo,
      "title": "Chikoo",
      "subtitle": "Lorem Ipsum is simply",
      "price" : 99,
      "peiece": "3PC",
      "height" : 300
    },
    {
      "color": categoriesSixColor,
      "image": cateMango,
      "title": "Mango",
      "subtitle": "Lorem Ipsum is simply",
      "price" : 99,
      "peiece": "3PC",
      "height" : 300
    },
    {
      "color": categoriesFirstColor,
      "image": cateBanana,
      "title": "Banana",
      "subtitle": "Lorem Ipsum is simply",
      "price" : 99,
      "peiece": "3PC"
    },
    {
      "color": categoriesFirstColor,
      "image": catekiwi,
      "title": "Pineapple",
      "subtitle": "Lorem Ipsum is simply",
      "price" : 99,

      "peiece": "3PC"
    },
    {
      "color": categoriesSecondColor,
      "image": cateStrawberry,
      "title": "Strawberry ",
      "subtitle": "Lorem Ipsum is simply",
      "price" : 99,
      "height" : 300,
      "peiece": "3PC"
    },
    {
      "color": categoriesEightColor,
      "title": "loreim ipsum ",
      "subtitle": "40% OFF",
      "height" : 175,
      "price" : 99,
      "peiece": "3PC"
    },

  ];

  bool displayText = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 300,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 180,
            ),
            itemCount: veglist.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: veglist[index]["color"],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [

                    Image(
                        height: 148.h,
                        width: 187.w,
                        image: AssetImage(veglist[index]["image"])),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(veglist[index]["title"] ?? "",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                              )),
                          Text(veglist[index]["subtitle"] ?? "",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: toOnBoardText2)),


                        ],
                      ),
                    ),
                    10.verticalSpace,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage("assets/images/rupees.png"),
                          ),
                          Text(
                            veglist[index]["price"].toString(),
                            style: TextStyle(color: Colors.black),
                          ),
                          70.horizontalSpace,
                          Text(veglist[index]["peiece"], style: TextStyle(color: Colors.black),)

                        ],
                      ),
                    ),




                  ],
                ),


              );
            },


          ),
        )
    );
  }
}



