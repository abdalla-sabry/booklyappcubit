import 'package:booklyappcubit/Future/BookVeiw/presntaion/view/widget/RecommendationImageContainer.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:booklyappcubit/core/utilize/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Recommedationcontainer extends StatelessWidget {
   Recommedationcontainer();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start  ,
      children: [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding:  EdgeInsets.only(left: 25),
          child: Text('You can also like',style: styleForText.styleText16.copyWith(
            color: Colors.white
          ),),
        ),
        SizedBox(
          height: 10,
        ),
        Recommendationimagecontainer()


      ],
    );
  }
}
