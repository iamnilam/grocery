import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestDealScreen extends StatelessWidget {
  const BestDealScreen({
    super.key,
    required this.bestDail,
  });

  final List bestDail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Center(
          child: Text(
            "Best Deal of  March",
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
              mainAxisExtent: 210,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0.0 // Added missing '0' after '20'
              ),
          shrinkWrap: true, // Set shrinkWrap to true
          itemCount: bestDail.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image(
                    height: 161.36.h,
                    width: 107.5.w,
                    image: AssetImage(bestDail[index]["image"])),
              ],
            );
          },
        ),
      ],
    );
  }
}
