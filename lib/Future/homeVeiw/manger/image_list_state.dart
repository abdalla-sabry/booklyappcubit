

abstract class StateForApi{}
class stateImageListIntial extends StateForApi{}
class stateImageListSuccuse extends StateForApi{}
class stateImageListFailure extends StateForApi{
  String? error;
  stateImageListFailure({required this.error});
}
class stateImageListLoading extends StateForApi{}
