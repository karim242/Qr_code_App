import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fourth_task/constant.dart';
import 'package:fourth_task/feature/home/widgets/choice_row.dart';
import 'package:fourth_task/feature/home/widgets/custom_bar.dart';
import 'package:fourth_task/feature/home/widgets/custom_title_sub_title.dart';

class ScanBody extends StatelessWidget {
  const ScanBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          CustomBar(
            child: SvgPicture.asset(listIcon),
          ),
          const Expanded(
            child: CustomTitleAndSubTitle(
              title: 'Scan OR code',
              subTitle:
                  'Place qr code inside the frame to scan pleasea void shake to get results quickly',
            ),
          ),
           const SizedBox(
              height: 75,
            ),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  SvgPicture.asset(qrCodeIcon),
                  const SizedBox(
                    height: 17,
                  ),
                  Text(
                    'Scanning Code...',
                    style: textStyles12(),
                  ),
                ],
              )),
          const SizedBox(
            height: 44,
          ),
          const Expanded(child: ChoiceRow()),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
