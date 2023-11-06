import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/src/constants/colors.dart';
import 'package:grocery/src/constants/images.dart';
import 'package:pinput/pinput.dart';

import '../on_boarding/dashboard/dashboard.dart';

const correctPin = "1234";

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  void _verifyPin(String pin) {
    if (pin == correctPin) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DasboardScreen()));
    } else {
      const snackbar =
          SnackBar(content: Text("Incorrect Pin! Please try again."));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity.w,
        child: Container(
          color: Colors.white10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Image(
                image: AssetImage(otpImage),
              )),
              20.verticalSpace,
              Text(
                "Verify Your Email",
                style: TextStyle(
                    color: toOnBoardText1,
                    fontSize: 40.sp,
                    fontFamily: "LibreFranklin",
                    fontWeight: FontWeight.w500),
              ),
              20.verticalSpace,
              Text(
                "Auto detecting OTP in 00:59",
                style: TextStyle(
                  color: toOnBoardText2,
                  fontSize: 15.sp,
                  fontFamily: "LibreFranklin",
                ),
              ),
              20.verticalSpace,
              Pinput(
                length: 4,
                onCompleted: (val) {
                  _verifyPin(val);
                },
                // animationDuration: Duration(milliseconds: 2000),
                //  pinAnimationType: PinAnimationType.none,
                validator: (s) {
                  return s == '2222' ? null : 'Pin is incorrect';
                },
                defaultPinTheme: PinTheme(
                  width: 56.w,
                  height: 56.h,
                  textStyle: TextStyle(
                      fontSize: 20.sp,
                      color: const Color.fromRGBO(30, 60, 87, 1),
                      fontWeight: FontWeight.w600),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              30.verticalSpace,
              Container(
                width: 255.37.w,
                height: 37.61.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: const Color(0xff2A3747)),
                child: InkWell(
                  onTap: () {
                    _verifyPin("1234");
                  },
                  child: Center(
                      child: Text("VERIFY",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.sp,
                              fontFamily: "LibreFranklin",
                              fontWeight: FontWeight.bold))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
