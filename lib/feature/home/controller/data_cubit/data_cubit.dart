import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fourth_task/constant.dart';
import 'package:fourth_task/feature/home/controller/data_cubit/data_state.dart';
import 'package:hive/hive.dart';

class AddDataCubit extends Cubit<AddDataState> {
  AddDataCubit() : super(AddDataInitial());
late   Box<String> qrBox;
  List<String> qrCodes = [];

  addData(String data) async {
    qrBox = Hive.box<String>(kDataBox);
    await qrBox.add(data);
      qrCodes = qrBox.values.toList();
   
     
    emit(AddDataSuccess());
   
  }
}
