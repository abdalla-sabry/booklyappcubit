import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';

class Contenerimages extends StatelessWidget {
String? imagePass;
double? hight;
BookDateModel?BookData;
  Contenerimages(
{
required this.BookData,required this.hight
}
      );

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .66,
      child: SizedBox(
        height: hight,
        child: Container(

          decoration: BoxDecoration(
           image: DecorationImage(image: NetworkImage(BookData!.imagePass!),
           fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(15)
          ),
        ),
      ),
    );
  }
}
