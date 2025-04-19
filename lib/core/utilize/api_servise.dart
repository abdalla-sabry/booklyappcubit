import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:booklyappcubit/constant.dart';
import 'package:booklyappcubit/core/errors/Fuliers.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ApiServise {
  Future<Either<Failers,List>> getApiServise() async {
      try {
        Dio dio = Dio();
        Response response = await dio.get('${kUrl}volumes?q=harry potter&filtering=free-book');

        List items=response.data['items'];
        return right(items);
      }  catch (e) {
        if(e is DioException){
          return left(ApiFailure.fromTypeError(e));}
        return  left(ApiFailure(e.toString()));

      }


  }
}
