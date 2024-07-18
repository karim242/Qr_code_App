
import 'package:flutter/material.dart';
import 'package:fourth_task/constant.dart';

class CustomTitleAndSubTitle extends StatelessWidget {
  const CustomTitleAndSubTitle({
    super.key, required this.title, required this.subTitle, this.height,
  });
final String title;
final String subTitle;
final double? height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
        title ,
          style: textStyle24().copyWith(fontSize: 16),
        ),
         SizedBox(
          height:height??53,
        ),
        SizedBox(
          width: 260,
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: textStyles12(),
          ),
        ),
      
      ],
    );
  }
}
