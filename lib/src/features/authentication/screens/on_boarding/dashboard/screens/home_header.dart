import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/src/constants/images.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 430.w,
      height: 300.h,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                  width: 420.w,
                  height: 240.h,
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
          const Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage(drawerIcon)),
                Column(
                  children: [
                    Text(
                      "Delivery Location",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("D-608, PNTC Vejalpur Ahmedabad")
                  ],
                ),
                Image(
                    color: Colors.white,
                    image: AssetImage(
                      cartIcon,
                    ))
              ],
            ),
          ),
          Positioned(
            left: 53,
            right: 53,
            bottom: 260,
            child: Container(
              height: 33.h,
              width: 325.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white),
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
        ],
      ),
    );
  }
}
