import 'package:flutter/cupertino.dart';

import '../../../../homeVeiw/presentaion/viewModel/BookDateModel.dart';

class Imagecontainerforbookdetiles extends StatelessWidget {
  Imagecontainerforbookdetiles({required this.hight, required this.BookData});
  double? hight;
  BookDateModel? BookData;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .66,
      child: SizedBox(
        height: hight,
        child: Container(

          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage('${BookData?.thumbnail}'),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(15)
          ),
        ),
      ),
    );
  }
}
