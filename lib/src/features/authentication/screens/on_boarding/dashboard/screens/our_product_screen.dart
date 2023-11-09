import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/category/categoristab.dart';

class OurProductScreen extends StatelessWidget {
  OurProductScreen({
    super.key,
    // required this.ourProduct,
  });

  // final List ourProduct;
  List ourProduct = [
    {
      "image": vegetables,
      "title": "Vegetables",
    },
    {"image": fruits, "title": "Fruits"},
    {"image": snacks, "title": "Dairy"},
    {"image": snacks, "title": "Snacks"},
    {"image": breckfast, "title": "Breakfast"},
    {"image": flour, "title": "Flour &Grains"},
    {"image": packedfood, "title": "Packaged Food"},
    {"image": personal, "title": "Personal Care"},
    {"image": babycare, "title": "Baby Care Products"},
    {"image": beverages, "title": "Beverages"},
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            mainAxisExtent: 80,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            // Added missing '0' after '20'
          ),
          shrinkWrap: true, // Set shrinkWrap to true
          itemCount: ourProduct.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                if (ourProduct[index]["title"] == 'Vegetables') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomeTabCategories()));
                } else if (ourProduct[index]["title"] == "Fruits") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomeTabCategories()));
                } else if (ourProduct[index]["title"] == "Dairy") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomeTabCategories()));
                } else if (ourProduct[index]["title"] == "Snacks") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomeTabCategories()));
                } else if (ourProduct[index]["title"] == "Breakfast") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomeTabCategories()));
                } else if (ourProduct[index]["title"] == "Flour &Grains") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomeTabCategories()));
                } else if (ourProduct[index]["title"] == "Packaged Food") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomeTabCategories()));
                } else if (ourProduct[index]["title"] == "Baby Care Products") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomeTabCategories()));
                } else if (ourProduct[index]["title"] == "Beverages") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomeTabCategories()));
                }
              },
              child: Column(
                children: [
                  Image(
                      height: 35.31.h,
                      width: 40.w,
                      image: AssetImage(ourProduct[index]["image"])),
                  Center(
                      child: Text("${ourProduct[index]["title"]}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                          ))),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
