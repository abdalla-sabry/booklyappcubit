import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/widght/bestsellerWidght/bestSellerContainer.dart';
import 'package:booklyappcubit/core/utilize/fontStyle.dart';
import 'package:booklyappcubit/Future/homeVeiw/manger/image_list_cubit.dart';
import 'package:booklyappcubit/Future/homeVeiw/manger/image_list_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utilize/ContenerImages.dart';
import '../../../../homeVeiw/presentaion/viewModel/BookDateModel.dart';

class Recommendationimagecontainer extends StatelessWidget {

   List<BookDateModel>? listOfBookDateModel;
bool test=true;
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    listOfBookDateModel  =BlocProvider.of<CubitForApi>(context).listBooksModels;

    return BlocBuilder<CubitForApi,StateForApi>(

        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(left: 33, right: 10, bottom: 10),
            child:
            SizedBox(
              height:height*.2,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, counter) {
                  return SizedBox(
                    height: 29,
                    width: 10,
                  );
                },
                itemCount: listOfBookDateModel!.length,
                itemBuilder: (context, counter) {
                  return           Contenarimages(BookData: listOfBookDateModel![counter],hight: 50 ,);
                },
              ),
            ),
          );
        },
      );
  }
}
