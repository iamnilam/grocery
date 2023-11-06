import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/src/constants/images.dart';

AppBar buildAppBarCustom() {
  return AppBar(
    bottomOpacity: 0,
    foregroundColor: Colors.white,
    leading: Image(image: AssetImage(drawerIcon)),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivery Location",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("D-608, PNTC Vejalpur Ahmedabad")
            ],
          ),
        ),
      ),
      IconButton(onPressed: (){}, icon: Image(
          color: Colors.white,
          image: AssetImage(
            cartIcon,
          )),),


    ],
    flexibleSpace: Container(
      color: Colors.white38,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                  width: 420.w,
                  height: 248.h,
                  fit: BoxFit.fill,
                  dashboardMaingreen)),
          Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Image(
                width: 332.w,
                height: 215.h,
                image: const AssetImage(dashboardMainFruits),
              )),
          Positioned(
            left: 53,
            right: 53,
            bottom: 260,
            child: Container(
              height: 33.h,
              width: 325.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                      width: 14.29.w,
                      height: 14.34.h,
                      image: const AssetImage(
                        "assets/images/searchIcon.png",
                      )),
                  Text(
                    "Search Products                             ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 350,
              left: 30,
              right: 30,
              child: Center(
                child: Text(
                  "Our Products",
                  style: TextStyle(
                      fontFamily: "LibreFranklin",
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              )),
        ],
      ),
    ),
    bottom: PreferredSize(
      child: Container(

      ),
      preferredSize: Size(double.infinity, 300,),
    ),
    backgroundColor: Colors.white,
    elevation: 0,
  );
}