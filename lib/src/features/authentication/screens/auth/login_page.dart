import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/auth/controller/auth_controller.dart';
import 'package:grocery/src/features/authentication/screens/on_boarding/dashboard/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
    const Color(0xFF2A3747),
  ];

  var gmailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: colorList[selectedIndex],
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: size.height.h,
              width: size.width.w,
              color: Colors.transparent,
            ),
            Positioned(
              right: 0.r,
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
                            bottom: size.height * 0.170.h, right: 15.r),
                        child: GestureDetector(
                            onTap: () {
                              AuthController.instance.login(
                                  gmailController.text.trim(),
                                  passwordController.text.trim());
                              setState(() {
                                // Redirect to the new page (HomePage) when the index is 2
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => DasboardScreen()),
                                );

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
                            child: Text(
                              'lOG IN', // Replace with the text you want to display
                              style: TextStyle(
                                  fontFamily: "LibreFranklin",
                                  color: Colors.white,
                                  fontSize: 10.sp
                                  // Add any other text styles you want
                                  ),
                            )),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 240.h,
                    width: 400.w,
                    child: PageView(
                      controller: pageController,
                      children: const [
                        Center(
                            child: Image(
                          image: AssetImage(welcomeScreenlogin),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.6.w,
                    height: 161.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         Text(
                          'LOG IN                            ',
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 50.sp,
                              color: toOnBoardText1),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 56.h,
                              width: 56.w,
                              child: const Image(
                                image: AssetImage(facebook),
                              ),
                            ),
                            25.horizontalSpace,
                            SizedBox(
                              height: 56.h,
                              width: 56.w,
                              child: const Image(
                                image: AssetImage(google),
                              ),
                            ),
                            25.horizontalSpace,
                            SizedBox(
                              height: 56.h,
                              width: 56.h,
                              child: const Image(
                                image: AssetImage(apple),
                              ),
                            ),
                          ],
                        ),
                        5.verticalSpace,
                        SizedBox(
                          width: size.width * 0.6.w,
                          height: 20.h,
                          child: Text(
                            'Or Log in with your email',
                            style: TextStyle(
                              color: toOnBoardText2,
                              fontSize: 16.sp,
                              fontFamily: "LibreFranklin",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.sp),
                          color: Colors.white,
                          border: Border.all(
                              color: const Color.fromRGBO(196, 135, 198, .3)),
                          boxShadow: const[
                             BoxShadow(
                              color: Color.fromRGBO(196, 135, 198, .3),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            )
                          ]),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.sp),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color.fromRGBO(
                                            196, 135, 198, .3)))),
                            child: TextField(
                              controller: gmailController,
                              decoration: InputDecoration(
                                prefixIcon: Image(
                                  height: 30.h,
                                  width: 30.w,
                                  image: const AssetImage("assets/images/gmail.png"),
                                ),
                                border: InputBorder.none,
                                hintText: "Full Name",
                              ),
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.w),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color.fromRGBO(
                                            196, 135, 198, .3)))),
                            child: TextField(
                              obscureText: true,
                              controller: passwordController,
                              decoration: InputDecoration(
                                prefixIcon: Image(
                                  height: 30.h,
                                  width: 30.w,
                                  image: const AssetImage("assets/images/lock.png"),
                                ),
                                border: InputBorder.none,
                                hintText: "Password",
                              ),
                              style: const TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(top: 200.h),
                      child: Text(
                        "Forgot \nPassword?",
                        style: TextStyle(
                            color: toOnBoardText2,
                            fontSize: 16.sp,
                            fontFamily: "LibreFranklin"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    const double xScaling = 1;
    final double yScaling = size.height * 0.0014;
    path.lineTo(60.9997 * xScaling, -1.5 * yScaling);
    path.cubicTo(
      60.9997 * xScaling,
      -1.5 * yScaling,
      75.9997 * xScaling,
      -1.5 * yScaling,
      75.9997 * xScaling,
      -1.5 * yScaling,
    );
    path.cubicTo(
      75.9997 * xScaling,
      -1.5 * yScaling,
      75.9997 * xScaling,
      811.5 * yScaling,
      75.9997 * xScaling,
      811.5 * yScaling,
    );
    path.cubicTo(
      75.9997 * xScaling,
      811.5 * yScaling,
      60.9997 * xScaling,
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
