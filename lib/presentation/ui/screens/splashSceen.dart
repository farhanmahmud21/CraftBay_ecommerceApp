import 'package:e_commerce/presentation/ui/screens/email_verification.dart';
import 'package:e_commerce/presentation/ui/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Splashsceen extends StatefulWidget {
  const Splashsceen({super.key});

  @override
  State<Splashsceen> createState() => _SplashsceenState();
}

class _SplashsceenState extends State<Splashsceen> {
  void initState() {
    super.initState();
    goToHomeScreen();
  }

  void goToHomeScreen() {
    Future.delayed(Duration(seconds: 2)).then((_) async {
      Get.offAll(EmailVerificationScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: SvgPicture.asset(
              'assets/images/logo.svg',
            ),
          ),
          Spacer(),
          CircularProgressIndicator(
            color: Color(0xFF27B8B9),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Version 0.1',
            style: TextStyle(color: Color(0xFFA5A5A5)),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
