import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/widght/bestsellerWidght/bestSellerContainer.dart';
import 'package:booklyappcubit/core/utilize/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../viewModel/BookDateModel.dart';

class Bestsellerwidgt extends StatelessWidget {
   Bestsellerwidgt({required this.listOfBookDateModel});
  List<BookDateModel> listOfBookDateModel;
  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: const EdgeInsets.only(left: 33, right: 10, bottom: 10),
      child:
      ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (context, counter) {
          return SizedBox(
            height: 29,
            width: 300,
          );
        },
        itemCount: listOfBookDateModel.length,
        itemBuilder: (context, counter) {
          return Bestsellercontainer(bookDateModel: listOfBookDateModel[counter], );
        },
      ),
    );
  }
}
