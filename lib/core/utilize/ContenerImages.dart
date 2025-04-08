import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Future/splash/presentation/viewsModel/BookDateModel.dart';

class Contenerimages extends StatelessWidget {
String? imagePass;
double? hight,width;
BookDateModel?BookData;
  Contenerimages(
{
required this.BookData,required this.width,required this.hight
}
      );

  @override
  Widget build(BuildContext context) {
    return Container(
height: hight,
      width: width,
      decoration: BoxDecoration(
       image: DecorationImage(image: NetworkImage(BookData!.imagePass!),
       fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(15)
      ),
    );
  }
}
