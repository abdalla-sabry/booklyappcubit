import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/widght/bestsellerWidght/rateContaner.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:booklyappcubit/core/utilize/fontStyle.dart';
import 'package:flutter/cupertino.dart';

class Bestsellercontainerdetials extends StatelessWidget {
   Bestsellercontainerdetials({required this.bookDateModel});
BookDateModel bookDateModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 200,
          child: Text(
            '${bookDateModel.title}',
            style: styleForText.styleText20_Gt,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        Container(
          width: 250,
          child: Text(
            '${bookDateModel.authors}',
            style: styleForText.styleText14,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        Container(
          width: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${bookDateModel.price} £',style: styleForText.styleText20.copyWith(
                fontSize: 16
              ),          overflow: TextOverflow.ellipsis,
              )
              ,Ratecontaner(bookDateModel: bookDateModel,)
            ],
          ),
        )
      ],
    );
  }
}
