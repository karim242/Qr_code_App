abstract class AddDataState {}

class AddDataInitial extends AddDataState {}

class AddDataLoading extends AddDataState {}

class AddDataSuccess extends AddDataState {}

class AddDataFailure extends AddDataState {
  final String errMessage;

  AddDataFailure(this.errMessage);
}