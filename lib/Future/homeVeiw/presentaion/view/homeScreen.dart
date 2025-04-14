import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/widght/MaincodeInHomwVeiw.dart';
import 'package:booklyappcubit/constant.dart';
import 'package:booklyappcubit/core/utilize/ContenerImages.dart';
import 'package:booklyappcubit/core/utilize/logo.dart';
import 'package:booklyappcubit/core/utilize/titleContaner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utilize/AssetsData.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  static const String routeName = 'home screen';

  List<Contenarimages> listImageContener = [];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title:const TitleWidght(),
        centerTitle: false,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 40, top: 30),
              child: Icon(
                Icons.search,
                size: 32,
                color: Colors.white,
              )),
        ],
      ),
      body: MainCodeInHomeVeiw(),
    );
  }
}

