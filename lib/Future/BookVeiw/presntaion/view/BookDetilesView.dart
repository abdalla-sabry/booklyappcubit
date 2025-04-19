import 'package:booklyappcubit/Future/BookVeiw/presntaion/view/widget/bodyWidght.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:booklyappcubit/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetilesView extends StatelessWidget {
  BookDetilesView();
  static const String routeName = 'BookDetilesView';
  @override
  Widget build(BuildContext context) {
    BookDateModel  bookDateModel=ModalRoute.of(context)?.settings.arguments as BookDateModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: Padding(
          padding: EdgeInsets.only(left: 30),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                color: Colors.white,
              )),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              Icons.shopping_cart,
              size: 32,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Bodywidght(
        bookDateModel: bookDateModel,
      ),
    );
  }
}
