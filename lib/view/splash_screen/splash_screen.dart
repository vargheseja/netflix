import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_app/utils/color_constants.dart';
import 'package:netflix_app/utils/image_constants.dart';
import 'package:netflix_app/view/user_n_screen/user_n_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => UserNameScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageConstants.netflixPrimaryLogo),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              color: ColorConstants.mainRed,
            )
          ],
        ),
      ),
    );
  }
}