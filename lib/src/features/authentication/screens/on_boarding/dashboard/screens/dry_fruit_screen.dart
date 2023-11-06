import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DryFruitScreen extends StatelessWidget {
  const DryFruitScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Dry Fruits & Seeds",
            style: TextStyle(
                fontFamily: "LibreFranklinBold",
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        20.verticalSpace,
        Stack(
          children: [
            Container(
              width: 364.w,
              height: 172.5.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/images/seed1.png",
                      ))),
            ),
            Container(
              width: 364.w,
              height: 172.5.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.black.withOpacity(0.2),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/seeds.png"),
                      fit: BoxFit.fill)),
            ),
            Positioned(
                top: 10,
                left: 20,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100.86.h,
                    width: 255.46.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          "Assorted seeds For \nA Healthy Living",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        10.verticalSpace,
                        Container(
                          height: 18.48.h,
                          width: 82.48.w,
                          decoration: const BoxDecoration(color: Colors.white),
                          child: Center(
                            child: Text(
                              "SHOP NOW",
                              style: TextStyle(
                                  color: Color(0xff87572F),
                                  fontFamily: "LibreFranklin",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            Positioned(
                top: 50,
                left: 70,
                right: 0.1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10, top: 10),
                  child: Image(
                    height: 120.h,
                    width: 259.w,
                    image: const AssetImage("assets/images/seeds2.png"),
                  ),
                ))
          ],
        ),
      ],
    );
  }
}
