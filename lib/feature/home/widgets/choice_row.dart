import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fourth_task/constant.dart';
import 'package:fourth_task/feature/home/views/camera_view.dart';
import 'package:fourth_task/feature/login/widgets/custom_button.dart';

class ChoiceRow extends StatelessWidget {
  const ChoiceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(galleryIcon),
            const SizedBox(width: 21),
            SvgPicture.asset(secondIcon),
            const SizedBox(width: 21),
            SvgPicture.asset(flashIcon),
          ],
        ),
        const SizedBox(height: 27.5),
        CustomButton(
          label: 'Place Camera Code',
          function: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  const QRScannerScreen()),
            );
          },
        )
      ],
    );
  }
}
