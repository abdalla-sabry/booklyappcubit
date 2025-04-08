import 'package:booklyappcubit/constant.dart';
import 'package:booklyappcubit/core/utilize/AssetsData.dart';
import 'package:booklyappcubit/core/utilize/themeColorModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});
static const String routeName='splash screen';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(

            child: Center(child: SvgPicture.asset(AssetsData.logo, width: 50,height: 50,)),
          ),
          SizedBox(
            height:4 ,
          ),
          Text('read free book',style: ThemeColorData.DarkTheme.textTheme.bodyLarge,)
        ],
      ),
    );
  }
}
