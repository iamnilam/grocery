import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/on_boarding/dashboard/screens/home_product_screen.dart';
import 'package:grocery/src/features/authentication/screens/viewCart/view_cart.dart';
import 'package:intl/intl.dart';

class ProductDairyPage extends StatelessWidget {
  var index;
  ProductDairyPage({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    var name;
    String image = "";
    if (index == 0) {
      name = "Amul Milk";
      image = dairy1;
    } else if (index == 2) {
      name = "Pumpkin  ";
      image = vegetables2;
    } else if (index == 3) {
      name = "Spinach ";
      image = vegetables3;
    } else if (index == 4) {
      name = "Tomato";
      image = vegetables4;
    } else if (index == 5) {
      name = "Carrot";
      image = vegetables5;
    } else if (index == 6) {
      name = "Onion";
      image = vegetables6;
    } else if (index == 7) {
      name = "Brinjal";
      image = vegetables7;
    }else if (index == 8) {
      name = "Raddish";
      image = vegetables8;
    }else if (index == 9) {
      name = "Cabbage";
      image = vegetables9;
    }else if (index == 10) {
      name = "Capsicum ";
      image = vegetables10;
    }else if (index == 11) {
      name = "Beetroot";
    }else if (index == 12) {
      name = "Red Cabbage";
      image = vegetables11;
    }else if (index == 13) {
      name = "Mushroom";
      image = vegetables12;
    }else if (index == 14) {
      name = "Cucumber";
      image = vegetables13;
    }else if (index == 14) {
      name = "Corn";
      image = vegetables14;
    }

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(color: Color(0xFF858585), Icons.arrow_back_sharp),
              ))),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 212.h,
                    width: 430.w,
                    color: Colors.transparent,
                  ),
                  Positioned(
                    bottom: 20,
                    child: Container(
                      width: 430.w,
                      height: 1.h,
                      color: const Color(0xff707070).withOpacity(0.2),
                    ),
                  ),
                   Positioned(
                    top: 0,
                    bottom: 0,
                    left: 30,
                    right: 30,
                    child: Image(
                      image: AssetImage(image),
                    ),
                  )
                ],
              ),
              Stack(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                  child: Stack(children: [
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "$name",
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontFamily: "LibreFranklin",
                                            fontWeight: FontWeight.bold),
                                      ),
                                      10.verticalSpace,
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image(
                                              height: 28.88.h,
                                              width: 28.88.w,
                                              image: const AssetImage(
                                                  "assets/images/categories/fruits/minutes1.png")),
                                          15.horizontalSpace,
                                          Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Text(
                                              "15 MINS",
                                              style: TextStyle(
                                                  color: Color(0xff707070),
                                                  fontSize: 14.sp,
                                                  fontFamily: "LibreFranklin"),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Image(
                              width: 40.83.w,
                              height: 50.6.h,
                              image: const AssetImage(
                                  "assets/images/categories/fruits/product_shareIcons.png")),
                        ],
                      ),
                      20.verticalSpace,
                      //select unit
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Select Unit",
                                style: TextStyle(
                                    fontSize: 26.sp,
                                    fontFamily: "LibreFranklin",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          30.verticalSpace,
                          Row(
                            children: [
                              Stack(children: [
                                Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 96.w,
                                          height: 75.h,
                                          decoration: BoxDecoration(
                                              color: const Color(0xffF7F7F7),
                                              borderRadius:
                                                  BorderRadius.circular(10.r),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.2),
                                                    spreadRadius: 2,
                                                    offset: const Offset(0, 3))
                                              ]),
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "1 Kg",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image(
                                                          image: AssetImage(
                                                              "assets/images/rupees.png")),
                                                      Text(
                                                        "88",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ],
                                                  ),

                                                  Row(
                                                    children: [
                                                      Image(
                                                          image: AssetImage(
                                                              "assets/images/rupees.png")),
                                                      Text(
                                                        "99",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                  // Text( )
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Positioned(
                                    top: 0,
                                    bottom: 65,
                                    left: 0,
                                    right: 0,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/best_deal_march/offer_with_text.png"),
                                    )),
                              ]),
                              50.horizontalSpace,
                              Column(
                                children: [
                                  Container(
                                    width: 96.w,
                                    height: 75.h,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF7F7F7),
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              spreadRadius: 2,
                                              offset: const Offset(0, 3))
                                        ]),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "1 Kg",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              children: [
                                                Image(
                                                    image: AssetImage(
                                                        "assets/images/rupees.png")),
                                                Text(
                                                  "88",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Image(
                                                    image: AssetImage(
                                                        "assets/images/rupees.png")),
                                                Text(
                                                  "99",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                            // Text( )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ]),
                  ]),
                ),
              ]),
              40.verticalSpace,
              HomeProductScreen(),
              //product description
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Product Details",
                      style: TextStyle(
                        fontSize: 26.sp,
                        color: Colors.black,
                        fontFamily: "LibreFranklin",
                      ),
                    ),
                    10.verticalSpace,
                    Text(
                        "vibrant green flesh. Here are some key product details",
                        style: TextStyle(
                            fontFamily: "LibreFranklin",
                            fontSize: 10.sp,
                            color: Color(0xff707070))),
                    10.verticalSpace,
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Appearance:",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "Small, oval-shaped fruit with brown, fuzzy skin and vibrant green flesh.",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Color(0xFF707070),
                              fontWeight: FontWeight.bold)),
                    ])),
                    10.verticalSpace,
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Taste:",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "Sweet and tangy flavour with hints of tropical notes.",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Color(0xFF707070),
                              fontWeight: FontWeight.bold)),
                    ])),
                    10.verticalSpace,
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Nutritional Value:",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "Rich in vitamin C, vitamin K, vitamin E, dietary fiber,and a variety of antioxidants.",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Color(0xFF707070),
                              fontWeight: FontWeight.bold)),
                    ])),
                    10.verticalSpace,
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Health Benefits:",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "Supports immune system, aids digestion, promotes skin health, and may reduce the risk of chronic diseases.",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Color(0xFF707070),
                              fontWeight: FontWeight.bold)),
                    ])),
                    10.verticalSpace,
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Texture:",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "Soft, juicy, and packed with tiny black seeds.",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Color(0xFF707070),
                              fontWeight: FontWeight.bold)),
                    ])),
                    10.verticalSpace,
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Origin:",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "Originally from China but now grown in many countries worldwide.",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Color(0xFF707070),
                              fontWeight: FontWeight.bold)),
                    ])),
                    10.verticalSpace,
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Season:",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "Typically in season during the fall and winter months.",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Color(0xFF707070),
                              fontWeight: FontWeight.bold)),
                    ])),
                    10.verticalSpace,
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Culinary Uses:",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "Eaten fresh, added to fruit salads, smoothies, and desserts.",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Color(0xFF707070),
                              fontWeight: FontWeight.bold)),
                    ])),
                    10.verticalSpace,
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Storage:",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "Store ripe kiwis in the refrigerator, unripe ones at room temperature.",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Color(0xFF707070),
                              fontWeight: FontWeight.bold)),
                    ])),
                    10.verticalSpace,
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Ripeness:",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "A ripe kiwi should yield to gentle pressure when squeezed.",
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: Color(0xFF707070),
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "Kiwi fruit is a delicious and nutritious addition to a balanced diet, offering a wide range of health benefits.",
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 10.sp,
                              color: Color(0xFF707070),
                              fontWeight: FontWeight.bold)),
                    ])),
                    10.verticalSpace,
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text:
                              "Kiwi fruit is a delicious and nutritious addition to a balanced diet, offering a wide range of health benefits.",
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: Color(0xFF707070),
                              fontWeight: FontWeight.bold)),
                    ])),
                  ],
                ),
              ),
              100.verticalSpace,
            ],
          ),
        ),
      ),
      bottomSheet: Stack(
        children: [
          BottomSheet(
            onClosing: () {},
            builder: (BuildContext context) {
              return SizedBox(
                height: 97.h,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1 Kg",
                            style:
                                TextStyle(fontSize: 15.sp, color: Colors.black),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  const Image(
                                      image: AssetImage(
                                          "assets/images/rupees.png")),
                                  const Text(
                                    "88",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  10.horizontalSpace,
                                  const Text(
                                    "MRP",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  10.horizontalSpace,
                                  const Image(
                                      image: AssetImage(
                                          "assets/images/rupees.png")),
                                  const Text(
                                    "88",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartScreen()));
                        },
                        child: Container(
                          height: 35.h,
                          width: 103.w,
                          decoration: BoxDecoration(
                              color: const Color(0xff0AB404),
                              borderRadius: BorderRadius.circular(12.r)),
                          child: const Center(child: Text("Add to cart")),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          const Positioned(
              top: 0,
              bottom: 65,
              left: 40,
              child: Image(
                image: AssetImage(
                    "assets/images/best_deal_march/offer_with_text.png"),
              )),
        ],
      ),
    );
  }
}
