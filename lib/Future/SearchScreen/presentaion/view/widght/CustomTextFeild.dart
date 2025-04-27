import 'package:booklyappcubit/Future/BookVeiw/manger/cubitSimaler/simaler_books_cubit.dart';
import 'package:booklyappcubit/Future/homeVeiw/manger/image_list_cubit.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/homeScreen.dart';
import 'package:booklyappcubit/core/utilize/api_servise.dart';
import 'package:booklyappcubit/core/utilize/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Customtextfeild extends StatelessWidget {
  const Customtextfeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: TextFormField(
        onFieldSubmitted: (value) {
          BlocProvider.of<CubitForApi>(context).getDataModel(seachPoint: value);
          BlocProvider.of<CubitSimalerBooks>(context).FetichSimalerBook(seachPoint: value);
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
                (route) => false,
          );        },
        obscureText: false,
        style: styleForText.styleText16,
        decoration: InputDecoration(

          hintText: 'search',
          suffix: Icon(
            Icons.search,
            size: 30,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
