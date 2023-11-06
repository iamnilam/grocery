import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/category/categoristab.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<Map<String, dynamic>> veglist = [
    {
     "color": categoriesFirstColor,
      "image": catekiwi,
      "title": "Kiwi",
      "subtitle": "Lorem Ipsum is simply",
      "price" : "3PC"
    },
    {
      "color": categoriesSecondColor,
      "image": "loreim ipsum",
      "offer": "40% OFF",
      "price" : "GROCERY40",
      "height" : 175
    },
    {
      "color": categoriesThirdColor,
      "image": cateAvacado,
      "title": "Avacado",
      "subtitle": "Lorem Ipsum is simply",
      "price" : "3PC",
      "height" : 300
    },
    {
      "color": categoriesFiveColor,
      "image": catePapaya,
      "title": "Papaya",
      "subtitle": "Lorem Ipsum is simply",
      "price" : "3PC",
      "height" : 300
    },
    {
      "color": categoriesSixColor,
      "image": cateMango,
      "title": "Mango",
      "subtitle": "Lorem Ipsum is simply",
      "price" : "3PC",
      "height" : 300
    },
    {
      "color": categoriesSevenColor,
      "image": cateStrawberry,
      "title": "Strawberry ",
      "subtitle": "Lorem Ipsum is simply",
      "price" : "3PC"
    },
    {
      "color": categoriesEightColor,
      "image": cateGraps,
      "title": "Graps",
      "subtitle": "Lorem Ipsum is simply",
      "price" : "3PC",
      "height" : 300
    },
    {
      "color": categoriesEightColor,
      "image": cateBlueberrie,
      "title": "Blueberrie",
      "subtitle": "Lorem Ipsum is simply",
      "price" : "3PC",
      "height" : 300
    },
    {
      "color": categoriesThirdColor,
      "image": cateAvacado,
      "title": "Avacado",
      "subtitle": "Lorem Ipsum is simply",
      "price" : "3PC",
      "height" : 300
    },
    {
      "color": categoriesFirstColor,
      "image": cateChikoo,
      "title": "Chikoo",
      "subtitle": "Lorem Ipsum is simply",
      "price" : "3PC",
      "height" : 300
    },
    {
      "color": categoriesSixColor,
      "image": cateMango,
      "title": "Mango",
      "subtitle": "Lorem Ipsum is simply",
      "price" : "3PC",
      "height" : 300
    },
    {
      "color": categoriesFirstColor,
      "image": cateBanana,
      "title": "Banana",
      "subtitle": "Lorem Ipsum is simply",
      "price" : "3PC"
    },
    {
      "color": categoriesFirstColor,
      "image": catekiwi,
      "title": "Pineapple",
      "subtitle": "Lorem Ipsum is simply",
      "price" : "3PC"
    },
    {
      "color": categoriesSecondColor,
      "image": cateStrawberry,
      "title": "Strawberry ",
      "subtitle": "Lorem Ipsum is simply",
      "height" : 300
    },
    {
      "color": categoriesEightColor,
      "title": "loreim ipsum ",
      "subtitle": "40% OFF",
      "price" : "GROCERY40",
      "height" : 175
    },

  ];

  bool displayText = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
                mainAxisSpacing: 10,
          crossAxisSpacing: 10
        ),
        itemCount: veglist.length,
        itemBuilder: (context, index) {
          final hasImage = veglist[index]["image"] != null;
          return Container(
            height: veglist[index]["height"]?.toDouble() ?? 0.0,
            width: 180.w,
            decoration: BoxDecoration(
              color: veglist[index]["color"],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                veglist[index]["image"] == null ? Text(veglist[index]["random"] ?? "", style: TextStyle(color: Colors.black))
                    : Image(image: AssetImage(veglist[index]["image"])),
              ],
            ),


          );
        },


      )
    );
  }
}



