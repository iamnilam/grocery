import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:grocery/src/features/authentication/screens/auth/login_page.dart';
import 'package:grocery/src/features/authentication/screens/auth/signup_page.dart';
import 'package:flutter/cupertino.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [

          Center(
            child: SizedBox(
              child: Center(
                  child: Image(
                height: 347.3.h,
                width: 362.76.w,
                image: AssetImage(welcomeScreen),
              )),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome back to',
                style: TextStyle(
                    fontFamily: "LibreFranklin",
                    fontSize: 30.sp,
                    color: toOnBoardText1),
              ),
              Text(
                'GROCERY APP',
                style: TextStyle(
                    fontFamily: "LibreFranklin",
                    fontSize: 50.sp,
                    color: toOnBoardText1),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonu',
                style: TextStyle(
                    fontFamily: "LibreFranklin",
                    fontSize: 20.sp,
                    color: toOnBoardText1),
              ),
            ],
          ),
          30.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 153.w,
                height: 53.h,
                decoration: BoxDecoration(
                    color: const Color(0xFFFA4141),
                    borderRadius: BorderRadius.circular(50.r)),
                child: Center(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: Text(
                        "SING UP",
                        style: TextStyle(
                            fontFamily: "LibreFranklin",
                            color: Colors.white,
                            fontSize: 20.sp),
                      )),
                ),
              ),
              Container(
                width: 153.w,
                height: 53.h,
                decoration: BoxDecoration(
                    color: const Color(0xFF7755CC),
                    borderRadius: BorderRadius.circular(50.r)),
                child: Center(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      child: Text(
                        "lOG IN",
                        style: TextStyle(
                            fontFamily: "LibreFranklin",
                            color: Colors.white,
                            fontSize: 20.sp),
                      )),
                ),
              ),
            ],
          ),
          80.verticalSpace
        ],
      ),
    ));
  }
}
