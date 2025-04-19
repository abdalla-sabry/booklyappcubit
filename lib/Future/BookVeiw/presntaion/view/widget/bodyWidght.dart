import 'package:booklyappcubit/Future/BookVeiw/presntaion/view/widget/imageContainerForBookDetiles.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:booklyappcubit/core/utilize/ContenerImages.dart';
import 'package:flutter/cupertino.dart';

import 'BookItemsContainer.dart';

class Bodywidght extends StatelessWidget {
   Bodywidght({required this.bookDateModel});
BookDateModel bookDateModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Container(height: 270,
           child: Center(child: Imagecontainerforbookdetiles(BookData: bookDateModel, hight: 20))),
        Bookitemscontainer(bookDateModel: bookDateModel,),
      ],
    );
  }
}
