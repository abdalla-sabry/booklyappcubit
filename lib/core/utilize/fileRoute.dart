import 'package:booklyappcubit/Future/BookVeiw/presntaion/view/BookDetilesView.dart';
import 'package:booklyappcubit/Future/SearchScreen/presentaion/view/SearchScreen.dart';
import 'package:flutter/cupertino.dart';

import '../../Future/homeVeiw/presentaion/view/homeScreen.dart';
import '../../Future/splash/presentation/views/splashScreen.dart';

abstract class RoutesPass {
 static Map<String, Widget Function(BuildContext)> routes={
    HomeScreen.routeName: (context) => HomeScreen(),
    Splashscreen.routeName: (context) => Splashscreen(),
   BookDetilesView.routeName:(context)=>BookDetilesView(),
   Searchscreen.routeName:(context)=>Searchscreen()
  };
}