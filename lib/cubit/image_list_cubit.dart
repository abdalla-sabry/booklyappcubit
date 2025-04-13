import 'package:flutter_bloc/flutter_bloc.dart';

import '../Future/homeVeiw/Data/repo/homeRepo.dart';
import '../Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import '../core/utilize/ContenerImages.dart';
import 'image_list_state.dart';

class ImageListCubit extends Cubit<ImageListState> {
  ImageListCubit() : super(stateImageListIntial());
   List<Contenerimages> listImageContener=[];
   List<BookDateModel> listBooksModels=[];
  Future<void> getDataModel() async {
    try {
      emit(stateImageListLoading());
      HomePageMehtod getDataModel = HomePageMehtod();
      listBooksModels = await getDataModel.FetchBestSellerBooks(
          catioresForBooks: 'sipederman');

      int i = 0;
      for (var book in listBooksModels) {
        listImageContener.add(Contenerimages(BookData: book, hight: 178));
        print('$i');
        i++;
      }
      emit(stateImageListSuccuse());
    } catch (e) {
      emit(stateImageListFailure(error: e.toString()));
    }

  }
  void  onChange(Change <ImageListState>change){
    super.onChange(change)  ;
    print(change);
  }
}
