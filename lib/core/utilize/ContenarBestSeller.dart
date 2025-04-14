import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ContenerImages.dart';

class Contenarbestseller extends StatelessWidget {
   Contenarbestseller({required  this.bookData});
final BookDateModel bookData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:30 ,bottom: 40),
      child: Row(
        children: [
          Contenarimages(BookData: bookData,  hight: 105),
        ],
      ),
    );
  }
}
