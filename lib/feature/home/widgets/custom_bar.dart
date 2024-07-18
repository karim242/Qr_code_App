
import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({
    super.key, required this.child,
  });
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 70,
            height: 5,
            decoration: BoxDecoration(
              color: const Color(0xffD9D9D9),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: child,
        ),
         const SizedBox(
            height: 53,
          ),
      ],
    );
  }
}
