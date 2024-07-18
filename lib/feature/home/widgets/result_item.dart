import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fourth_task/constant.dart';

class ResultItemsListView extends StatelessWidget {
  const ResultItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return const ResultItem();
      },
    );
  }
}






class ResultItem extends StatelessWidget {
  const ResultItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 2),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
          child: ListTile(
            leading: SvgPicture.asset(resultIcon),
            title: Text(
              '7E0918FF',
              style: textStyle24()
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
