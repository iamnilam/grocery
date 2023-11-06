import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/product/productScreen.dart';

class HomeProductScreen extends StatefulWidget {
  HomeProductScreen({
    super.key,
  });

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

  @override
  State<HomeProductScreen> createState() => _HomeProductScreenState();
}

class _HomeProductScreenState extends State<HomeProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 130,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          shrinkWrap: true, // Set shrinkWrap to true
          itemCount: widget.homeProduct.length,
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
                      height: 60.h,
                      width: 70.w,
                      image: AssetImage(widget.homeProduct[index]["image"])),
                  Center(
                      child: Text("${widget.homeProduct[index]["title"]}",
                          textAlign: TextAlign.center,
                          style:  TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                          ))),
                  5.verticalSpace,
                  Container(
                    height: 20.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4.0.r)),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainProductPage()));
                      },
                      child: const Center(
                        child: Text(
                          "+ADD",
                          style: TextStyle(color: Color(0xff1473E6)),
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
