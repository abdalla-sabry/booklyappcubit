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
        bookDateModel.averageRating!=null?Text('${bookDateModel.averageRating}',style: styleForText.styleText18semiBold,):Text('no rate',style: styleForText.styleText18semiBold.copyWith(
          fontSize:14
        ),),
        SizedBox(width: 9,),
       bookDateModel.ratingsCount!=null? Text('(${bookDateModel.ratingsCount})',style: styleForText.styleText16,):        Text('(none)',style: styleForText.styleText16,)

      ],
    );
  }
}
