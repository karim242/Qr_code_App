import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fourth_task/constant.dart';
import 'package:fourth_task/feature/home/controller/data_cubit/data_cubit.dart';
import 'package:fourth_task/feature/home/controller/data_cubit/data_state.dart';

class ResultItemsListView extends StatelessWidget {
  const ResultItemsListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddDataCubit, AddDataState>(


      builder: (context, state) {
              List<String> data = BlocProvider.of<AddDataCubit>(context).qrCodes;

           return ListView.builder(
          shrinkWrap: true,
          itemCount: data.length,
          //box.length,
          itemBuilder: (context, index) {
            return ResultItem(data:data[index]);
          },
        );
        }
        
    );
    //  }
    // });
  }
}

class ResultItem extends StatelessWidget {
  const ResultItem({super.key, required this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 2),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
          child: ListTile(
            leading: SvgPicture.asset(resultIcon),
            title: Text(
              data,
              style: textStyle24()
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
