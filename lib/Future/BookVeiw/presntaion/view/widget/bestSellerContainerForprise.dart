import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:booklyappcubit/core/utilize/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          child: Center(child: Text('${bookDateModel.price??'Free'}',style:  styleForText.styleText18.copyWith(
            fontWeight: FontWeight.w400
          ))),
        ),

        GestureDetector(
          onTap: () async {
            Uri uri=Uri.parse(bookDateModel!.previewLink!);

            if (await canLaunchUrl(uri)){
              launchUrl(uri);
            }
          },
          child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            child: Center(child: Text('free Preview',style: styleForText.styleText16.copyWith(
              fontWeight: FontWeight.w700
            ),)),
          ),
        ),
      ],
    );
  }
}
