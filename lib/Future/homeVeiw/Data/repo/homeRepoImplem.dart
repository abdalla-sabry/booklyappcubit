import 'package:booklyappcubit/Future/homeVeiw/Data/repo/homeRepo.dart';
import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:booklyappcubit/core/errors/Fuliers.dart';
import 'package:booklyappcubit/core/utilize/api_servise.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeMehtodRepo extends HomeRepe {
  Future<Either<Failers, List<BookDateModel>>> FetchFutureBooks() async {
    ApiServise apiServise = ApiServise();
    List<BookDateModel> listBooks = [];
    Failers falures;
    Either<Failers, List> items = await apiServise.getApiServise();
    return items.fold((fail) {
      falures = fail;
      return left(falures);
    }, (list) {
      for (var item in list) {
        listBooks.add(BookDateModel.fromJson(item));
      }
      return right(listBooks);
    });
  }

  @override
  Future<List<BookDateModel>> FetchBestSellerBooks(
      {required String catioresForBooks}) {
    // TODO: implement FetchBestSellerBooks
    throw UnimplementedError();
  }
}
