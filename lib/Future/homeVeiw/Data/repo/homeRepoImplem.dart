import 'package:booklyappcubit/Future/homeVeiw/Data/repo/homeRepo.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:booklyappcubit/core/errors/Fuliers.dart';
import 'package:booklyappcubit/core/utilize/api_servise.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeMehtodRepo extends HomeRepe {
  Future<Either<Failers, List<BookDateModel>>> FetchFutureBooks({String? searchPoint}) async {
    ApiServise apiServise = ApiServise();
    List<BookDateModel> listBooks = [];
    Failers falures;
    Either<Failers, List> items = await apiServise.getApiServise(searchPoint: searchPoint);
    return items.fold((fail) {
      falures = fail;
      return left(falures);
    }, (list) {
      for (var item in list) {

        try {
          listBooks.add(BookDateModel.fromJson(item));
        }  catch (e) {

          print ('it is her');
          listBooks.add(BookDateModel.fromJson(item));

        }
      }
      return right(listBooks);
    });
  }

  Future<List<BookDateModel>> FetchBestSellerBooks(
      {required String catioresForBooks}) {// TODO: implement FetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failers, List<BookDateModel>>> FetchSimalerBooks({required String catioresForBooks}) async {
    ApiServise apiServise = ApiServise();
    List<BookDateModel> listBooks = [];
    Failers falures;
    Either<Failers, List> items = await apiServise.getApiServise(SimalerBook: '&Sorting=revelance');
    return items.fold((fail) {
      falures = fail;
      return left(falures);
    }, (list)
    {
      for (var item in list) {
        try {
          listBooks.add(BookDateModel.fromJson(item));
        } catch (e) {
          print('it is her');
          listBooks.add(BookDateModel.fromJson(item));
        }
      }
      return right(listBooks);
    });
}
}