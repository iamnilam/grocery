import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopDealMarchScreen extends StatelessWidget {
  const TopDealMarchScreen({
    super.key,
    required this.homeProduct,
  });

  final List homeProduct;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Top Deals of March",
            style: TextStyle(
                fontFamily: "LibreFranklin",
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 150,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            // Added missing '0' after '20'
          ),
          shrinkWrap: true, // Set shrinkWrap to true
          itemCount: homeProduct.length,
          itemBuilder: (context, index) {
            return Container(
              height: 141.h,
              width: 101.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.3)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0.r)),
              child: Column(
                children: [
                  Image(
                      height: 56.28.h,
                      width: 57.13.w,
                      image: AssetImage(homeProduct[index]["image"])),
                  Center(
                      child: Text("${homeProduct[index]["title"]}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: "LibreFranklin",
                            color: Colors.black,
                          ))),
                  10.verticalSpace,
                  Container(
                    height: 16.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4.0.r)),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Center(
                        child: Text(
                          "+ADD",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              color: Color(0xff1473E6)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
