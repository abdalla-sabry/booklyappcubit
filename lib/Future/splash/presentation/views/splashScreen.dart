import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/homeScreen.dart';
import 'package:booklyappcubit/constant.dart';
import 'package:booklyappcubit/core/utilize/AssetsData.dart';
import 'package:booklyappcubit/core/utilize/themeColorModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
  static const String routeName = 'splash screen';

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}
late final AnimationController animationController;
late final Animation<Offset> sildingAnimation;
class _SplashscreenState extends State<Splashscreen>
    with SingleTickerProviderStateMixin {
  @override

  void initState() {

    super.initState();

    siledingAnimationProssing();
    GetNavigateWithDelaye();
  }



  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
                child: SvgPicture.asset(
              AssetsData.logo,
              width: 50,
              height: 50,
            )),
          ),
          SizedBox(
            height: 4,
          ),
          SlideTransition(
            position: sildingAnimation,
            child: Text(
              'read free book',
              style: ThemeColorData.DarkTheme.textTheme.bodyLarge,
            ),
          )
        ],
      ),
    );
  }
  void siledingAnimationProssing() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    //animationController.value   should do that if i want valuse form 0 to 1
    sildingAnimation = Tween<Offset>(begin: Offset(0, 5), end: Offset(0, 0))
        .animate(animationController);
    sildingAnimation.addListener(() {
      setState(() {});
    });
    animationController.forward();
  }
  void GetNavigateWithDelaye() {
    Future.delayed(const Duration(seconds: 3),() {
      Get.to(
        HomeScreen(),
        transition: Transition.fade, // or any other transition
        duration: Duration(milliseconds: 500), // optional
      );
    },);
  }


}
