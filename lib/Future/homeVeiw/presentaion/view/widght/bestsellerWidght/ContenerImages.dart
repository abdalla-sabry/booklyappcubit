import 'package:booklyappcubit/Future/BookVeiw/presntaion/view/BookDetilesView.dart';
import 'package:booklyappcubit/core/utilize/fileRoute.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../viewModel/BookDateModel.dart';

class Contenarimages extends StatelessWidget {
  double? hight;
  BookDateModel? BookData;
  Contenarimages({required this.BookData, required this.hight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
            context, arguments: BookData, BookDetilesView.routeName);
      },
      child: AspectRatio(
        aspectRatio: .66,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: BookData!.thumbnail??'imagna',
            placeholder: (context, url) => Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
