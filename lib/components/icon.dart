import 'package:flutter/material.dart';
import '../constants.dart';

class IconRow extends StatelessWidget {
  final IconData icon1;
  final String label;

  const IconRow({Key? key, required this.icon1, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon1,
          size: 80.0,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
