import 'package:booklyappcubit/Future/homeVeiw/manger/image_list_cubit.dart';
import 'package:booklyappcubit/Future/homeVeiw/manger/image_list_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bestsellerWidght/ContenerImages.dart';

class listveiwforImages extends StatelessWidget {
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return BlocBuilder<CubitForApi, StateForApi>(
      builder: (context, state) {
        if (state is stateImageListIntial) {
          BlocProvider.of<CubitForApi>(context).getDataModel();
        }

        return state is stateImageListLoading
            ? Container(
                height: 300,
                child: Center(
                  child: CircularProgressIndicator(),
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
                            itemBuilder: (context, counter) => Contenarimages(
                                BookData: BlocProvider.of<CubitForApi>(context)
                                    .listBooksModels[counter],
                                hight: height * .20),
                            itemCount: BlocProvider.of<CubitForApi>(context)
                                .listBooksModels
                                .length,
                          ),
                        ),
                      )
                    : Container(
                        height: 300,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
      },
    );
  }
}
