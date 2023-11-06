import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HygieneProductScreen extends StatelessWidget {
  const HygieneProductScreen({
    super.key,
    required this.hygieneProduct,
  });

  final List hygieneProduct;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 318.83.h,
      width: 338.47.w,
      child: Column(
        children: [
          Center(
            child: Text(
              "Hygiene Products",
              style: TextStyle(
                  fontFamily: "LibreFranklinBold",
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          10.w.verticalSpace,
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 139,
                mainAxisSpacing: 40.0,
                crossAxisSpacing: 30.0,
                childAspectRatio: 1.1),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: hygieneProduct.length,
            itemBuilder: ((context, index) {
              return Stack(
                children: [
                  Container(
                    height: 128.86.h,
                    width: 102.31.w,
                    decoration: BoxDecoration(
                        color: const Color(0xff8A6E52),
                        image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/hygieneproducts/common.png")),
                        borderRadius: BorderRadius.circular(1)),
                    child: const Column(
                      children: [],
                    ),
                  ),
                  Positioned(
                      top: 126,
                      child: Center(
                        child: Container(
                          color: hygieneProduct[index]["color"],
                          //height: 128.86.h,
                          width: 112.31.w,
                          height: 10.21.h,
                          child: Center(
                            child: Text(
                              "PREMIUM QUALITY",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontFamily: "LibreFranklinBold",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 30,
                      left: 22,
                      child: Center(
                        child: Container(
                          height: 32.61.h,
                          width: 72.57.w,
                          color: hygieneProduct[index]["color"],
                          child: Center(
                            child: Text(
                              "${hygieneProduct[index]["title"]}",
                              style: TextStyle(
                                  fontFamily: "LibreFranklinBold",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 50,
                      child: Image(
                          height: 67.83.h,
                          width: 70.81.w,
                          image:
                              AssetImage(hygieneProduct[index]["hygieneImag"])))
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
