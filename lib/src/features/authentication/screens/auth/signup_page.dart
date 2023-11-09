import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/auth/controller/auth_controller.dart';
import 'package:grocery/src/features/authentication/screens/auth/otp_page.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    var nameController = TextEditingController();
    var gmailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: colorList[selectedIndex],
      body: SingleChildScrollView(
        child: Stack(
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
                width: 70.w,
                child: ClipPath(
                  clipper: ClipPathClass(),
                  child: Container(
                    color: nextColorList[selectedIndex],
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: size.height * 0.195.h, right: 15.r),
                        child: GestureDetector(
                            onTap: () {
                              AuthController.instance.register(
                                  gmailController.text.trim(),
                                  passwordController.text.trim());
                            },
                            child: Text(
                              'SIGN UP', // Replace with the text you want to display
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
              padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 240.h,
                    width: size.width * 0.7.w,
                    child: PageView(
                      controller: pageController,
                      children: [
                        Center(
                            child: Image(
                          image: AssetImage(welcomeScreenlogin),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.7.w,
                    height: 148.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //header
                        Text(
                          'SIGN UP',
                          style: TextStyle(
                              fontFamily: "LibreFranklin",
                              fontSize: 40.sp,
                              color: toOnBoardText1),
                        ),
                        10.horizontalSpace,
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
                              width: 56.h,
                              child: Image(
                                image: AssetImage(google),
                              ),
                            ),
                            25.horizontalSpace,
                            SizedBox(
                              height: 56.h,
                              width: 56.w,
                              child: Image(
                                image: AssetImage(apple),
                              ),
                            ),
                          ],
                        ),
                        10.verticalSpace,
                        SizedBox(
                          width: size.width * 0.8.w,
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
                    padding: const EdgeInsets.only(
                      right: 50,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: Colors.white,
                          border: Border.all(
                              color: const Color.fromRGBO(196, 135, 198, .3)),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(196, 135, 198, .3),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            )
                          ]),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color.fromRGBO(
                                            196, 135, 198, .3)))),
                            child: TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.black),
                                prefixIcon: Image(
                                  height: 30.h,
                                  width: 30.w,
                                  image: AssetImage(
                                      "assets/images/admin_icon.png"),
                                ),
                                border: InputBorder.none,
                                hintText: "Full Name",
                              ),
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
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
                                  image: AssetImage("assets/images/gmail.png"),
                                ),
                                border: InputBorder.none,
                                hintText: "Enter your email",
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                              style: TextStyle(color: Colors.black),
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
                                    image: AssetImage("assets/images/lock.png"),
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color:
                                          Colors.black), // Set hint text color
                                  // Set the style for the input text itself
                                  hintMaxLines:
                                      1, // You can add other styling properties here
                                ),
                                style: TextStyle(
                                    color: Colors
                                        .black), // Set the input text color to white
                              ))
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(top: 100.w),
                      child: Text(
                        "Already have account? Log in",
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
