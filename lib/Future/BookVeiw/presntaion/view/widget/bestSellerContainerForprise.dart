import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:booklyappcubit/core/utilize/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bestsellercontainerforprise extends StatelessWidget {
   Bestsellercontainerforprise({required this.bookDateModel});
BookDateModel bookDateModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: [
        Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xffEF8262),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15)),
          ),
          child: Center(child: Text('${bookDateModel.price}',style:  styleForText.styleText18)),
        ),

        Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15)),
          ),
          child: Center(child: Text('${bookDateModel. id}',style: styleForText.styleText16_Gilroy,)),
        ),
      ],
    );
  }
}
