import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/homeScreen.dart';
import 'package:booklyappcubit/Future/splash/presentation/views/splashScreen.dart';
import 'package:booklyappcubit/constant.dart';
import 'package:booklyappcubit/core/utilize/fileRoute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'Future/BookVeiw/manger/cubitSimaler/simaler_books_cubit.dart';
import 'Future/homeVeiw/manger/image_list_cubit.dart';

void main() {
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CubitForApi(),
        ),
        BlocProvider(
          create: (context) => CubitSimalerBooks(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
        routes: RoutesPass.routes,
        initialRoute: Splashscreen.routeName,
      ),
    );
  }
}
