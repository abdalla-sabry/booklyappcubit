import 'package:booklyappcubit/Future/homeVeiw/Data/repo/homeRepo.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utilize/ContenerImages.dart';

class listveiwforImages extends StatefulWidget {
  const listveiwforImages({
    super.key,
  });

  @override
  State<listveiwforImages> createState() => _listveiwforImagesState();
}

class _listveiwforImagesState extends State<listveiwforImages> {

 List<Contenerimages> listImageContener = [];
  List<BookDateModel> listBooksModels = [];
  void initState() {
    getDataModel();
    super.initState();
  }
  Future<void> getDataModel() async {

    HomePageMehtod getDataModel = HomePageMehtod();
    listBooksModels = await getDataModel.FetchBestSellerBooks(
        catioresForBooks: 'programming');
    int i=0;
    for (var book in listBooksModels) {
      listImageContener.add(Contenerimages(BookData: book, hight: 178));

      print('$i');
      i++;
    }
  }

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
