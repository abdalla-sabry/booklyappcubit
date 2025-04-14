import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/widght/bestsellerWidght/rateContaner.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utilize/fontStyle.dart';

class Bookitemscontainer extends StatelessWidget {
   Bookitemscontainer({required this.bookDateModel});
BookDateModel bookDateModel;
  @override
  Widget build(BuildContext context) {
    return     Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 45,
        ),
        Container(

          width: 250,
          child: Text(
            '${bookDateModel.title}',
            style: styleForText.styleText20_Gt,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        SizedBox(
          height:5 ,
        ),
        Container(
          width: 170  ,
          child: Text(
            '${bookDateModel.authors}',
            style: styleForText.styleText14,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        SizedBox(
          height:14 ,
        ),
        Ratecontaner(bookDateModel: bookDateModel,)
      ],
    );
    
  }
}
