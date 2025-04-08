import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import 'AssetsData.dart';

class TitleWidght extends StatelessWidget {
  const TitleWidght({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, top: 26),
      child: Container(
          child: SvgPicture.asset(
        AssetsData.logo,
        height: 20,
        width: 20,
      )),
    );
  }
}
