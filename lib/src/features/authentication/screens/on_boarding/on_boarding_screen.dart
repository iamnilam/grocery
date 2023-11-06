import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/auth/welcome.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController pageController = PageController();
  PageController textController = PageController();
  PageController descriptionController = PageController();

  int selectedIndex = 0;
  List<Color> colorList = [
    const Color(0xFFFFFFFF),
    const Color(0xFFFFFFFF),
    const Color(0xFFFFFFFF),
  ];

  List<Color> nextColorList = [
    const Color(0xFFFA4141),
    const Color(0xFF7755CC),
    const Color(0xFFFF9633),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: colorList[selectedIndex],
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            color: Colors.transparent,
          ),
          Positioned(
            right: 0,
            child: SizedBox(
              height: size.height,
              width: 65.w,
              child: ClipPath(
                clipper: ClipPathClass(),
                child: Container(
                  color: nextColorList[selectedIndex],
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                          bottom: size.height * 0.110.sp, right: 5.sp),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (selectedIndex == 2) {
                              // Redirect to the new page (HomePage) when the index is 2
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const WelcomeScreen()),
                              );
                            } else {
                              selectedIndex++;
                            }

                            pageController.animateToPage(
                              selectedIndex,
                              duration: const Duration(seconds: 1),
                              curve: Curves.ease,
                            );
                            textController.animateToPage(
                              selectedIndex,
                              duration: const Duration(seconds: 1),
                              curve: Curves.ease,
                            );
                            descriptionController.animateToPage(
                              selectedIndex,
                              duration: const Duration(seconds: 1),
                              curve: Curves.ease,
                            );
                          });
                        },
                        child: selectedIndex == 2
                            ? const Text(
                                'Get Started', // Replace with the text you want to display
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                    // Add any other text styles you want
                                    ),
                              )
                            : Image(
                                height: 60.h,
                                width: 60.w,
                                image: AssetImage(sPArrow),
                                color: Colors.white,
                              ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '',
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 18.0),
                      child: Text(
                        'skip',
                        style: TextStyle(
                          fontFamily: "LibreFranklin",
                        ),
                      ),
                    ),
                  ],
                ),
                20.verticalSpace,
                Center(
                  child: SizedBox(
                    height: 200.h,
                    width: 200.w,
                    child: PageView(
                      controller: pageController,
                      children: const [
                        Center(
                            child: Image(
                          image: AssetImage(sPlashScreen1),
                        )),
                        Center(
                            child: Image(
                          image: AssetImage(sPlashScreen2),
                        )),
                        Center(
                            child: Image(
                          image: AssetImage(sPlashScreen3),
                        )),
                      ],
                    ),
                  ),
                ),
                50.verticalSpace,
                SizedBox(
                  width: size.width * 0.7.w,
                  height: 100.h,
                  child: PageView(
                    controller: textController,
                    children:  [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Choose best',
                            style: TextStyle(
                              fontFamily: "LibreFranklin",
                              color: toOnBoardText1,
                              fontSize: 30.sp,
                            ),
                          ),
                          Text(
                            'GROCERY',
                            style: TextStyle(
                              color: toOnBoardText1,
                              fontSize: 50.sp,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Customize your',
                            style: TextStyle(
                              fontFamily: "LibreFranklin",
                              color: toOnBoardText1,
                              fontSize: 30.sp,
                            ),
                          ),
                          Text(
                            'SEARCH',
                            style: TextStyle(
                              fontFamily: "LibreFranklin",
                              color: toOnBoardText1,
                              fontSize: 50.sp,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fresh & Fast',
                            style: TextStyle(
                              fontFamily: "LibreFranklin",
                              color: toOnBoardText1,
                              fontSize: 30.sp,
                            ),
                          ),
                          Text(
                            'DELIVERY',
                            style: TextStyle(
                              fontFamily: "LibreFranklin",
                              color: toOnBoardText1,
                              fontSize: 50.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                7.verticalSpace,
                SizedBox(
                  width: size.width * 0.7.w,
                  height: 70.h,
                  child: PageView(
                    controller: descriptionController,
                    children:  [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet ut nec vitae gravida ullamcorper .',
                        style: TextStyle(
                          fontFamily: "LibreFranklin",
                          color: toOnBoardText1,
                          fontSize: 20.sp,
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet ut nec vitae gravida ullamcorper .',
                        style: TextStyle(
                          fontFamily: "LibreFranklin",
                          color: toOnBoardText1,
                          fontSize: 20.sp,
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet ut nec vitae gravida ullamcorper .',
                        style: TextStyle(
                          fontFamily: "LibreFranklin",
                          color: toOnBoardText1,
                          fontSize: 20.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                30.verticalSpace,
                SizedBox(
                  height: 20.h,
                  width: 100.w,
                  child: Row(
                    children: List.generate(
                      3,
                      (index) => Container(
                        height: 10.h,
                        width: 10.w,
                        margin: EdgeInsets.symmetric(horizontal: 2.h),
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? nextColorList[index]
                              : Colors.grey,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    const double xScaling = 1;
    final double yScaling = size.height * 0.0015;
    path.lineTo(90.9997 * xScaling, -1.5 * yScaling);
    path.cubicTo(
      80.9997 * xScaling,
      -1.5 * yScaling,
      90.9997 * xScaling,
      -1.5 * yScaling,
      100.9997 * xScaling,
      -1.5 * yScaling,
    );
    path.cubicTo(
      80.9997 * xScaling,
      -1.5 * yScaling,
      90.9997 * xScaling,
      -1.5 * yScaling,
      100.9997 * xScaling,
      -1.5 * yScaling,
    );
    path.cubicTo(
      75.9997 * xScaling,
      811.5 * yScaling,
      70.9997 * xScaling,
      811.5 * yScaling,
      60.9997 * xScaling,
      811.5 * yScaling,
    );
    path.cubicTo(
      60.9997 * xScaling,
      811.5 * yScaling,
      60.9997 * xScaling,
      663.25 * yScaling,
      60.9997 * xScaling,
      663.25 * yScaling,
    );
    path.cubicTo(
      60.9997 * xScaling,
      663.25 * yScaling,
      60.9997 * xScaling,
      676.901 * yScaling,
      60.9997 * xScaling,
      654.763 * yScaling,
    );
    //rounder
    path.cubicTo(
      60.9997 * xScaling,
      610.638 * yScaling,
      0.5 * xScaling,
      595 * yScaling,
      0.5 * xScaling,
      556 * yScaling,
    );
    path.cubicTo(
      0.5 * xScaling,
      517 * yScaling,
      60.9997 * xScaling,
      501.5 * yScaling,
      60.9997 * xScaling,
      462.638 * yScaling,
    );
    path.cubicTo(
      60.9997 * xScaling,
      440.5 * yScaling,
      60.9997 * xScaling,
      452 * yScaling,
      60.9997 * xScaling,
      452 * yScaling,
    );
    path.cubicTo(
      60.9997 * xScaling,
      452 * yScaling,
      60.9997 * xScaling,
      -1.5 * yScaling,
      60.9997 * xScaling,
      -1.5 * yScaling,
    );
    path.cubicTo(
      60.9997 * xScaling,
      -1.5 * yScaling,
      60.9997 * xScaling,
      -1.5 * yScaling,
      60.9997 * xScaling,
      -1.5 * yScaling,
    );

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
