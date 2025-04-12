import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:booklyappcubit/constant.dart';
import 'package:booklyappcubit/core/errors/Fuliers.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class HomeRepe {
  Future<Either<Failers, List<BookDateModel>>> FetchFutureBooks();
  Future< List<BookDateModel>> FetchBestSellerBooks({required String catioresForBooks});
}

class HomePageMehtod extends HomeRepe {
  @override
  Future< List<BookDateModel>>  FetchBestSellerBooks(
      {required String catioresForBooks}) async {
    Dio dio = Dio();
    try {
      Response response =
      await dio.get(url, queryParameters: {'q': catioresForBooks});
      List items=response.data['items'];
      if(items == null){
print('the list is null');

      }else{
        List <BookDateModel>booksDataModel=[];
        for (var item in items){
          booksDataModel.add(BookDateModel.fromJson(item));
        }
        return booksDataModel;
      }
    }catch(e){
      print(e);
    }
return [];
  }

  @override
  Future<Either<Failers, List<BookDateModel>>> FetchFutureBooks() {
    // TODO: implement FetchFutureBooks
    throw UnimplementedError();
  }
}
