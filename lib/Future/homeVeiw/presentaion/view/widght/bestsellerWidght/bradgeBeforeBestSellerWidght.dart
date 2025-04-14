import 'package:booklyappcubit/Future/homeVeiw/presentaion/view/widght/bestsellerWidght/BestSellerWidgt.dart';
import 'package:booklyappcubit/cubit/image_list_cubit.dart';
import 'package:booklyappcubit/cubit/image_list_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utilize/ContenerImages.dart';

class Bradgebeforebestsellerwidgt extends StatelessWidget {
  Widget build(BuildContext context) {
    return BlocBuilder<ImageListCubit, ImageListState>(
      builder: (context, state) {
        if (state is stateImageListIntial) {
          BlocProvider.of<ImageListCubit>(context).getDataModel();
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
                    ?  Bestsellerwidgt(listOfBookDateModel: BlocProvider.of<ImageListCubit>(context).listBooksModels,)
                    : Container(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
      },
    );
  }
}
