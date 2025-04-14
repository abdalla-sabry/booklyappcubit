import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:booklyappcubit/core/utilize/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ratecontaner extends StatelessWidget {
   Ratecontaner({required this.bookDateModel});
BookDateModel bookDateModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star,color: Color(0xffFFDD4F),),
        SizedBox(width: 3.6,),
        Text('${bookDateModel.averageRating}',style: styleForText.styleText18semiBold,),
        SizedBox(width: 9,),
        Text('(${bookDateModel.ratingsCount})',style: styleForText.styleText16,)
      ],
    );
  }
}
