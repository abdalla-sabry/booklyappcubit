import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/widght/bestsellerWidght/BestSellerWidgt.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/widght/bestsellerWidght/bradgeBeforeBestSellerWidght.dart';
import 'package:booklyappcubit/cubit/image_list_cubit.dart';
import 'package:booklyappcubit/cubit/image_list_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utilize/ContenerImages.dart';
import '../../../../../core/utilize/fontStyle.dart';
import 'ListVeiwImage/ListVeiwImages.dart';

class MainCodeInHomeVeiw extends StatelessWidget {
  const MainCodeInHomeVeiw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: listveiwforImages(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 30, top: 39, bottom: 22),
            child: Text(
              'Best Seller',
              style: styleForText.styleText18,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Bradgebeforebestsellerwidgt(),
        )
      ],
    );
  }
}
