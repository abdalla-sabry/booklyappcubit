import 'package:booklyappcubit/Future/BookVeiw/presntaion/view/widget/RecommedationContainer.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/widght/bestsellerWidght/rateContaner.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilize/fontStyle.dart';
import 'bestSellerContainerForprise.dart';

class Bookitemscontainer extends StatelessWidget {
  Bookitemscontainer({
    required this.bookDateModel,
  });
  BookDateModel bookDateModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 45,
        ),
        Container(
          width: 250,
          child: Center(
            child: Text(
              '${bookDateModel.title}',
              style: styleForText.styleText20_Gt.copyWith(fontSize: 23),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: 170,
          child: Center(
            child: Text(
              '${bookDateModel.authors}',
              style: styleForText.styleText16
                  .copyWith(color: Color(0xff707070), fontSize: 17),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Ratecontaner(
          bookDateModel: bookDateModel,
        ),
        SizedBox(
          height: 14,
        ),
        Bestsellercontainerforprise(
          bookDateModel: bookDateModel,
        ),
        Recommedationcontainer()
      ],
    );
  }
}
