import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18,
  color: Colors.white,
);

class IconRow extends StatelessWidget {
  final IconData icon1;
  final String label;

  const IconRow({super.key, required this.icon1, required this.label});

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
          style: labelTextStyle,
        ),
      ],
    );
  }
}
