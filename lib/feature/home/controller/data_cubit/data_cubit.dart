import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fourth_task/constant.dart';
import 'package:fourth_task/feature/home/controller/data_cubit/data_state.dart';
import 'package:fourth_task/feature/home/model/data_model.dart';
import 'package:hive/hive.dart';

class AddDataCubit extends Cubit<AddDataState> {
  AddDataCubit() : super(AddDataInitial());

  addNote(DataModel data) async {
    emit(AddDataLoading());
    try {
      var dataBox = Hive.box<DataModel>(kDataBox);
      await dataBox.add(data);
      emit(AddDataSuccess());
    } catch (e) {
      emit(AddDataFailure(e.toString()));
    }
  }
}
