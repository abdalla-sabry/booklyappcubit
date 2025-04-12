import 'package:flutter/cupertino.dart';

import '../../../../../core/utilize/ContenerImages.dart';

class listveiwforImages extends StatelessWidget {
  const listveiwforImages({
    super.key,
    required this.listImageContener,
  });

  final List<Contenerimages> listImageContener;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22.5, top: 30),
      child: Container(
        height: 300,
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
              width: 7.5,
            );
          },
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, counter) => listImageContener[counter],
          itemCount: listImageContener.length,
        ),
      ),
    );
  }
}
