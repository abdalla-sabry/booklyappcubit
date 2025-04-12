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

  List<Contenerimages> listImageContener = [];

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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 22.5, top: 30),
            child: Container(
              height: 300,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                    width: 7.5,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, counter) => listImageContener[counter],
                itemCount: listImageContener.length,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.0, top: 48),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Best Seller',
                  style:
                      GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
