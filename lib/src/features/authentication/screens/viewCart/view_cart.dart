import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/src/features/authentication/screens/on_boarding/dashboard/screens/home_product_screen.dart';
import 'package:input_quantity/input_quantity.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black.withOpacity(0.5),
            surfaceTintColor: Colors.black,
            foregroundColor: Colors.red,
            elevation: 8,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text(
              "Cart",
              style: TextStyle(color: Colors.black),
            ),
            leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_sharp,
                color: Colors.black,
              ),
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffF7F7F7),
                      borderRadius: BorderRadius.circular(20.r),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            offset: const Offset(0, 2))
                      ]),
                  width: 430.w,
                  height: 163.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: [
                            Image(
                              height: 40.3.h,
                              width: 40.3.w,
                              image: const AssetImage(
                                "assets/images/minutes.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                            20.horizontalSpace,
                            Column(
                              children: [
                                Text(
                                  "Delivery in 15 minutes",
                                  style: TextStyle(
                                      color: const Color(0xFF707070),
                                      fontSize: 14.sp),
                                ),
                                Text(
                                  "Shipment of 1 items",
                                  style: TextStyle(
                                    color: const Color(0xFF707070),
                                    fontSize: 14.sp,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                              height: 68.h,
                              width: 71.w,
                              image: const AssetImage("assets/images/chikoo.png")),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Potato - 1 KG",
                                style: TextStyle(
                                    color: const Color(0xFF707070), fontSize: 14.sp),
                              ),
                              2.verticalSpace,
                              Text(
                                "1 KG",
                                style: TextStyle(
                                    color: const Color(0xFF707070), fontSize: 10.sp),
                              ),
                              10.verticalSpace,
                              const Row(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          "assets/images/rupees.png")),
                                  Text(
                                    "30",
                                    style: TextStyle(color: Colors.black,fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 32.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: const Color(0xff0AB404),
                            ),
                            child: Center(
                              child: InputQty(
                                initVal: 1,
                                steps: 1,
                                minVal: -99,
                                decoration: const QtyDecorationProps(
                                  btnColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none
                                  )
                                ),
                                validator: (value) {
                                  if (value == null) {
                                    return "Required field";
                                  } else if (value >= 99) {
                                    return "More than available quantity";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              30.verticalSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Before you Checkout",
                        style: TextStyle(fontSize: 21.sp, color: Colors.black),
                      ),
                      20.verticalSpace,
                      HomeProductScreen(),
                    ],
                  ),
                ),
              ),
              Container(
                height: 77.h,
                decoration: BoxDecoration(
                  color: const Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(
                        image:
                            AssetImage("assets/images/get_free_delivery.png")),
                    Text("Get FREE delivery")
                  ],
                ),
              ),
              30.verticalSpace,
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "See all coupons",
                            style: TextStyle(color: Color(0xff707070)),
                          ),
                          Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      20.verticalSpace,
                      const Text(
                        "Bill Details",
                        style: TextStyle(color: Colors.black, fontSize: 21),
                      ),
                      20.verticalSpace,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sub total",
                            style: TextStyle(color: Colors.black),
                          ),
                          Row(
                            children: [
                              Image(
                                  image:
                                      AssetImage("assets/images/rupees.png")),
                              Text(
                                "30",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                      20.verticalSpace,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Charge",
                            style: TextStyle(color: Colors.black),
                          ),
                          Row(
                            children: [
                              Image(
                                  image:
                                      AssetImage("assets/images/rupees.png")),
                              Text(
                                "20",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                      20.verticalSpace,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Grand total",
                            style: TextStyle(color: Colors.black),
                          ),
                          Row(
                            children: [
                              Image(
                                  image:
                                      AssetImage("assets/images/rupees.png")),
                              Text(
                                "50",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                      40.verticalSpace,
                      Text(
                        "Cancellation Policy",
                        style: TextStyle(color: Colors.black, fontSize: 21.sp),
                      ),
                      10.verticalSpace,
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisienim ad minim veniam, quis ",
                            style: TextStyle(color: Colors.black))
                      ])),
                      80.verticalSpace,
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomSheet: BottomSheet(
            onClosing: () {},
            builder: (context) {
              return Container(
                height: 44.h,
                width: 430.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xff0AB404),
                ),
                child: Center(
                  child: Text(
                    "Choose address at next steps",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: "LibreFranklin"),
                  ),
                ),
              );
            }));
  }
}
