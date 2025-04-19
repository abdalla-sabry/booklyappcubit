import 'package:booklyappcubit/Future/SearchScreen/presentaion/view/widght/BridgeForSearch.dart';
import 'package:booklyappcubit/Future/SearchScreen/presentaion/view/widght/CustomTextFeild.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/widght/bestsellerWidght/bradgeBeforeBestSellerWidght.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});
static const String routeName='search screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Customtextfeild(),
          Bridgeforsearch()
        ],
      ),
    );
  }
}
