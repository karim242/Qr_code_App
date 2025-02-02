import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fourth_task/constant.dart';
import 'package:fourth_task/feature/home/widgets/custom_bar.dart';
import 'package:fourth_task/feature/home/widgets/custom_title_sub_title.dart';
import 'package:fourth_task/feature/home/widgets/result_item.dart';
import 'package:fourth_task/feature/login/views/login_view.dart';
import 'package:fourth_task/feature/login/widgets/custom_button.dart';

class ResultsView extends StatelessWidget {
  const ResultsView({super.key, });
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomBar(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => const LoginView()));
                },
                child: SvgPicture.asset(pauseIcon)),
            ),
            CustomTitleAndSubTitle(
              height: 22,
              title: 'Scanning Result',
              subTitle:
              'Proreader will Keep your last 10 days history to keep your all scared history please purched our pro package',
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
