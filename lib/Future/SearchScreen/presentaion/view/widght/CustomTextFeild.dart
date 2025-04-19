import 'package:booklyappcubit/core/utilize/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customtextfeild extends StatelessWidget {
  const Customtextfeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      child: TextFormField(
        onTap: () {},
        obscureText: false,
        style: styleForText.styleText16,
        decoration: InputDecoration(
          hintText: 'search',
         suffix: Icon(Icons.search,size: 30,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
