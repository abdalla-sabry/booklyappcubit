import 'package:booklyappcubit/cubit/image_list_cubit.dart';
import 'package:booklyappcubit/cubit/image_list_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utilize/ContenerImages.dart';

class listveiwforImages extends StatelessWidget {
  Widget build(BuildContext context) {
    return BlocBuilder<ImageListCubit, ImageListState>(
      builder: (context, state) {
        if (state is stateImageListIntial) {
          BlocProvider.of<ImageListCubit>(context).getDataModel();
        }

        return state is stateImageListLoading
            ? Container(
                child: Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              )
            : state is stateImageListFailure
                ? Center(
                    child: Text('${state.error}'),
                  )
                : state is stateImageListSuccuse
                    ? Padding(
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
                            itemBuilder: (context, counter) =>
                                BlocProvider.of<ImageListCubit>(context)
                                    .listImageContener[counter],
                            itemCount: BlocProvider.of<ImageListCubit>(context)
                                .listImageContener
                                .length,
                          ),
                        ),
                      )
                    : Container(
                        child: Expanded(
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      );
      },
    );
  }
}
