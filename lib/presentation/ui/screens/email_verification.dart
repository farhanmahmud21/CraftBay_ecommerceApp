import 'package:e_commerce/presentation/ui/utility/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              ImageAsset.logoAsset,
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Welcome Back',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF505050),
                wordSpacing: 0.7,
                letterSpacing: 0.5),
          ),
          Text(
            'Please Enter Your E-mail Address',
            style: TextStyle(
              color: Color(
                0xFFA3A3A3,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(18),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF2FBABB),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(18),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Next'),
            ),
          ),
        ],
      ),
    );
  }
}
