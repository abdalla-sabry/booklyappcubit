import 'package:bloc/bloc.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:booklyappcubit/core/errors/Fuliers.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../homeVeiw/Data/repo/homeRepoImplem.dart';
import '../../../homeVeiw/presentaion/view/widght/bestsellerWidght/ContenerImages.dart';
import '../../../homeVeiw/manger/image_list_state.dart';

part 'simaler_books_state.dart';

class CubitSimalerBooks extends Cubit<StateSimalerBooksState> {
  CubitSimalerBooks() : super(StateSimalerBooksInitial());
  List<Contenarimages> listImageContener = [];
  List<BookDateModel> listSimalerBooksModel = [];
    Future<void> FetichSimalerBook({String? seachPoint}) async {
      try {
        emit(StateSimalerBooksLoading());
        HomeMehtodRepo repo = HomeMehtodRepo();
        Either<Failers, List<BookDateModel>> items =
        await repo.FetchFutureBooks( searchPoint: seachPoint); //Must be Not future
        items.fold(
              (falure) {
            emit(StateSimalerBooksFailure(error: falure.error));
          },
              (thelist) {
            listSimalerBooksModel = thelist;
            for (var item in listSimalerBooksModel) {
              listImageContener.add(Contenarimages(BookData: item, hight: 100));
            }
            emit(StateSimalerBooksSuccess());
          },
        );
      } catch (e) {
        emit(StateSimalerBooksFailure(error: e.toString()));
      }
    }
@override
void onChange(Change<StateSimalerBooksState> change) {
  super.onChange(change);
  print(change);
}

}
