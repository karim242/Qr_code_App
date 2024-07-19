import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fourth_task/constant.dart';
import 'package:fourth_task/feature/home/views/custom_layout.dart';
import 'package:fourth_task/feature/home/views/scan_view_body.dart';
import 'package:fourth_task/feature/home/widgets/custom_bar.dart';
import 'package:fourth_task/feature/home/widgets/custom_title_sub_title.dart';
import 'package:fourth_task/feature/home/widgets/result_item.dart';
import 'package:fourth_task/feature/login/widgets/custom_button.dart';

class ResultsView extends StatelessWidget {
  const ResultsView({super.key, });
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            CustomBar(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => const ScanView(child: ScanBody(),)));
                },
                child: SvgPicture.asset(pauseIcon)),
            ),
            const Expanded(
              child: CustomTitleAndSubTitle(
                height: 22,
                title: 'Scanning Result',
                subTitle:
                'Proreader will Keep your last 10 days history to keep your all scared history please purched our pro package',
              ),
            ),
            
             const Expanded(
              flex: 3 ,
              child: ResultItemsListView()),

           const SizedBox(
            height: 28,
          ),
           CustomButton(label: 'Send',),
          const SizedBox(
            height: 40,
          ),
          ],
        ));
  }
}
