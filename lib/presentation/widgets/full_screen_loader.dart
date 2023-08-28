import 'package:flutter/material.dart';
import 'package:flutter_anime_list/assets/res/resources.dart';
import 'package:lottie/lottie.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Lottie.asset(
        Animations.splashLottie,
        width: 300,
        height: 300,
        repeat: true,
      )),
    );
  }
}
