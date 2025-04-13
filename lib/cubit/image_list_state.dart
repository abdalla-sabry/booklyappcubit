

abstract class ImageListState{}
class stateImageListIntial extends ImageListState{}
class stateImageListSuccuse extends ImageListState{}
class stateImageListFailure extends ImageListState{
  String? error;
  stateImageListFailure({required this.error});
}
class stateImageListLoading extends ImageListState{}
