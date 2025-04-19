import 'package:booklyappcubit/Future/SearchScreen/presentaion/view/widght/BestSellerWidghtForSearch.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/widght/bestsellerWidght/BestSellerWidgt.dart';
import 'package:booklyappcubit/Future/homeVeiw/manger/image_list_cubit.dart';
import 'package:booklyappcubit/Future/homeVeiw/manger/image_list_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utilize/ContenerImages.dart';

class Bridgeforsearch extends StatelessWidget {
  Widget build(BuildContext context) {
    return BlocBuilder<CubitForApi, StateForApi>(
      builder: (context, state) {
        if (state is stateImageListIntial) {
          BlocProvider.of<CubitForApi>(context).getDataModel();
        }

        return state is stateImageListLoading
            ? Container(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        )
            : state is stateImageListFailure
            ? Center(
          child: Text('${state.error}'),
        )
            : state is stateImageListSuccuse
            ?  Bestsellerwidghtforsearch(listOfBookDateModel: BlocProvider.of<CubitForApi>(context).listBooksModels,)
            : Container(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
