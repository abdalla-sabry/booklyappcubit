import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:booklyappcubit/core/errors/Fuliers.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepe {
  Future<Either<Failers, List<BookDateModel>> >FetchFutureBooks();
  Future<List<BookDateModel>> FetchBestSellerBooks(
      {required String catioresForBooks});
  Future<Either<Failers, List<BookDateModel>> >FetchSimalerBooks(
      {required String catioresForBooks}) ;

}





