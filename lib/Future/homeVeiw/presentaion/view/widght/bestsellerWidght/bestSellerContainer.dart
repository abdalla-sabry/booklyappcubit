import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/widght/bestsellerWidght/bestSellerContainerDetials.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:booklyappcubit/core/utilize/ContenerImages.dart';
import 'package:flutter/cupertino.dart';

class Bestsellercontainer extends StatelessWidget {

  Bestsellercontainer({required this.bookDateModel});
  BookDateModel bookDateModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Row(
        children: [
          Contenarimages(BookData: bookDateModel,hight: 105,),

          SizedBox(width: 30,),
      Bestsellercontainerdetials(bookDateModel: bookDateModel)
        ],
      ),
    );
  }
}

