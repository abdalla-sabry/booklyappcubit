import 'package:booklyappcubit/constant.dart';
import 'package:booklyappcubit/core/errors/Fuliers.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ApiServise {


  Future<Either<Failers, List>> getApiServise({String? searchPoint,String? SimalerBook}) async {
    try {
      Dio dio = Dio();
      Response response = await dio.get(
          '${kUrl}volumes?q=${searchPoint ?? 'harry potter'}&filtering=free-book$SimalerBook');

      List items = response.data['items'];
      if(items ==null){
        return left(      ApiFailure('the is not $searchPoint')
    );

      }
      return right(items);
    } catch (e) {
      if (e is DioException) {
        return left(ApiFailure.fromTypeError(e));
      }
      return left(ApiFailure(e.toString()));
    }
  }
}
