import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/homeScreen.dart';
import 'package:booklyappcubit/Future/splash/presentation/views/splashScreen.dart';
import 'package:booklyappcubit/constant.dart';
import 'package:booklyappcubit/core/utilize/fileRoute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'cubit/image_list_cubit.dart';

void main() {
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageListCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor
        ),
        routes: RoutesPass.routes,
        initialRoute: Splashscreen.routeName,
      ),
    );
  }
}
