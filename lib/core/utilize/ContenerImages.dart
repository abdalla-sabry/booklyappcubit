import 'package:booklyappcubit/Future/BookVeiw/presntaion/view/BookDetilesView.dart';
import 'package:booklyappcubit/core/utilize/fileRoute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';

class Contenarimages extends StatelessWidget {
  double? hight;
  BookDateModel? BookData;
  Contenarimages({required this.BookData, required this.hight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context,arguments:BookData ,BookDetilesView.routeName);
      },
      child: AspectRatio(
        aspectRatio: .66,
        child: SizedBox(
          height: hight,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('${BookData?.thumbnail}'),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(15)),
          ),
        ),
      ),
    );
  }
}
