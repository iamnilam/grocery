import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GreenGroceryScreen extends StatelessWidget {
  const GreenGroceryScreen({
    super.key,
    required this.greenGrocer,
  });

  final List greenGrocer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "The Green Grocer",
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
                mainAxisSpacing: 30.0,
                crossAxisSpacing: 30.0,
                childAspectRatio: 1.1),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: greenGrocer.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: greenGrocer[index]["color"],
                    borderRadius: BorderRadius.circular(2)),
                child: Column(
                  children: [
                    Image(
                        height: 91.h,
                        width: 78.w,
                        image: AssetImage(greenGrocer[index]["images"])),
                    Center(
                      child: Text("${greenGrocer[index]["title"]}"),
                    ),
                    10.verticalSpace,
                  ],
                ),
              );
            })
      ],
    );
  }
}
