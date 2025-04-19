import 'package:booklyappcubit/Future/homeVeiw/Data/repo/homeRepoImplem.dart';
import 'package:booklyappcubit/core/utilize/api_servise.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Data/repo/homeRepo.dart';
import '../presentaion/viewModel/BookDateModel.dart';
import '../../../core/errors/Fuliers.dart';
import '../../../core/utilize/ContenerImages.dart';
import 'image_list_state.dart';

class CubitForApi extends Cubit<StateForApi> {
  CubitForApi() : super(stateImageListIntial());
  List<Contenarimages> listImageContener = [];
  List<BookDateModel> listBooksModels = [];
  Future<void> getDataModel() async {
    try {
      emit(stateImageListLoading());
      HomeMehtodRepo repo = HomeMehtodRepo();
      Either<Failers, List<BookDateModel>> items =
          await repo.FetchFutureBooks(); //Must be Not future
      items.fold(
        (falure) {
          emit(stateImageListFailure(error: falure.error));
        },
        (thelist) {
          listBooksModels = thelist;
          for (var item in listBooksModels) {
            listImageContener.add(Contenarimages(BookData: item, hight: 100));
          }
          emit(stateImageListSuccuse());
        },
      );
    } catch (e) {
      emit(stateImageListFailure(error: e.toString()));
    }
  }

  void onChange(Change<StateForApi> change) {
    super.onChange(change);
    print(change);
  }
}
