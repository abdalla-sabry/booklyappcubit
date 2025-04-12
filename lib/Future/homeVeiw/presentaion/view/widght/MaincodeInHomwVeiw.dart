import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/widght/BestSellerWidgt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utilize/ContenerImages.dart';
import 'ListVeiwImages.dart';

class MainCodeInHomeVeiw extends StatelessWidget {
  const MainCodeInHomeVeiw({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listveiwforImages(),
        Bestsellerwidgt()
      ],
    );
  }
}
