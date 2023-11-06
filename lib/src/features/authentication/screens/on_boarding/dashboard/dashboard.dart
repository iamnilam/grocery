import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/src/common_widgets/appbarCustom.dart';
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/on_boarding/dashboard/screens/best_deal_screen.dart';
import 'package:grocery/src/features/authentication/screens/on_boarding/dashboard/screens/dry_fruit_screen.dart';
import 'package:grocery/src/features/authentication/screens/on_boarding/dashboard/screens/green_grocery_screen.dart';
import 'package:grocery/src/features/authentication/screens/on_boarding/dashboard/screens/home_product_screen.dart';
import 'package:grocery/src/features/authentication/screens/on_boarding/dashboard/screens/hygiene_product_screen.dart';
import 'package:grocery/src/features/authentication/screens/on_boarding/dashboard/screens/our_product_screen.dart';
import 'package:grocery/src/features/authentication/screens/on_boarding/dashboard/screens/top_deal_march.dart';

import 'screens/home_header.dart';

class DasboardScreen extends StatelessWidget {
  DasboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: buildAppBarCustom(),

        drawer: Drawer(),
        body: SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              //our categories
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    OurProductScreen(),
                    HomeProductScreen(),
                    10.verticalSpace,
                    Container(
                      height: 143.h,
                      width: 421.w,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: ExactAssetImage(bannerImage1),
                      )),
                    ),
                    10.verticalSpace,
                    BestDealScreen(bestDail: bestDail),
                    SizedBox(
                      height: 203.h,
                      width: 364.w,
                      child: const Image(
                        image: AssetImage(bannerImage2),
                      ),
                    ),
                    SizedBox(
                      height: 203.h,
                      width: 364.w,
                      child: const Image(
                        image: AssetImage(bannerImage3),
                      ),
                    ),
                    TopDealMarchScreen(homeProduct: homeProduct),
                    10.verticalSpace,
                    GreenGroceryScreen(greenGrocer: greenGrocer),
                    20.verticalSpace,
                    Container(
                      width: 364.w,
                      height: 172.5.h,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/images/Group 915.png"),
                      )),
                    ),
                    10.verticalSpace,
                    const DryFruitScreen(),
                    20.verticalSpace,
                    HygieneProductScreen(hygieneProduct: hygieneProduct)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }



  List homeProduct = [
    {"image": productBanana, "title": "Fresh Banana"},
    {"image": productOrage, "title": "Fresh Orange"},
    {"image": productKiwi, "title": "Fresh Kiwi"},
    {"image": productMango, "title": "Fresh Mango"},
    {"image": productTomato, "title": "Fresh Tomato"},
    {"image": productPatata, "title": "Fresh Patata"},
    {"image": productBrocoli, "title": "Fresh Brocoli"},
    {"image": productCarrot, "title": "Fresh Carrot"},
  ];
  List bestDail = [
    {
      "image": dailyGrouop,
    },
    {
      "image": jamsGrouop,
    },
    {
      "image": spicesGrouop,
    },
    {
      "image": bekaryGrouop,
    },
    {
      "image": oilGrouop,
    },
    {
      "image": laundryGrouop,
    },
  ];
  List greenGrocer = [
    {
      "color": greenBox,
      "images": riceImg,
      "title": "Rice",
    },
    {
      "color": pinkBox,
      "images": dalImg,
      "title": "Rich Dal",
    },
    {
      "color": yellowBox,
      "images": floutImg,
      "title": "Flours",
    },
    {
      "color": blueBox,
      "images": spicesImg,
      "title": "Teste makers",
    },
    {
      "color": orangeBox,
      "images": sugarImg,
      "title": "Sweet & Salty",
    },
  ];
  List hygieneProduct = [
    {
      "hygieneImag": tooth,
      "title": "ToothPest",
      "subtile": "Rice",
      "color": greenhygiene
    },
    {
      "hygieneImag": detergent,
      "title": "Detergent",
      "subtile": "Rice",
      "color": lightbluehygiene
    },
    {
      "hygieneImag": bodywash,
      "title": "Bodywash",
      "subtile": "Rice",
      "color": brownhygiene
    },
    {
      "hygieneImag": bathsoap,
      "title": "Bathsoap",
      "subtile": "Rice",
      "color": greendarkhygiene
    },
    {
      "hygieneImag": shampoo,
      "title": "Shampoo",
      "subtile": "Rice",
      "color": orangehygiene
    },
    {
      "hygieneImag": firstAid,
      "title": "First aid",
      "subtile": "Rice",
      "color": ringhygiene
    },
  ];
}




