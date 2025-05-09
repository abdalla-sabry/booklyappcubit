import 'package:booklyappcubit/Future/BookVeiw/manger/cubitSimaler/simaler_books_cubit.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/widght/bestsellerWidght/bestSellerContainer.dart';
import 'package:booklyappcubit/core/utilize/fontStyle.dart';
import 'package:booklyappcubit/Future/homeVeiw/manger/image_list_cubit.dart';
import 'package:booklyappcubit/Future/homeVeiw/manger/image_list_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../homeVeiw/presentaion/view/widght/bestsellerWidght/ContenerImages.dart';
import '../../../../homeVeiw/presentaion/viewModel/BookDateModel.dart';

class Recommendationimagecontainer extends StatelessWidget {
  List<BookDateModel>? listOfBookDateModel;
  bool test = true;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return BlocBuilder<CubitSimalerBooks, StateSimalerBooksState>(
      builder: (context, state) {
        if (state is StateSimalerBooksInitial){
          BlocProvider.of<CubitSimalerBooks>(context).FetichSimalerBook();
        }
        return state is StateSimalerBooksLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : state is StateSimalerBooksFailure
                ? Center(
                    child: Text('${state.error}'),
                  )
                : state is StateSimalerBooksSuccess
                    ? Padding(
                        padding: const EdgeInsets.only(
                            left: 33, right: 10, bottom: 10),
                        child: SizedBox(
                          height: height * .2,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, counter) {
                              return SizedBox(
                                height: 29,
                                width: 10,
                              );
                            },
                            itemCount:BlocProvider.of<CubitSimalerBooks>(context).listSimalerBooksModel!.length,
                            itemBuilder: (context, counter) {
                              return Contenarimages(
                                BookData: BlocProvider.of<CubitSimalerBooks>(context).listSimalerBooksModel![counter],
                                hight: 50,
                              );
                            },
                          ),
                        ),
                      )
                    : Center(
                        child: Text('wait'),
                      );
      },
    );
  }
}
