import 'package:flutter/material.dart';
import '../constants.dart';

class ButtomButton extends StatelessWidget {
  final Function() onTap;
  final String buttonTitle;
  const ButtomButton(
      {super.key, required this.buttonTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        margin: const EdgeInsets.only(top: 20),
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtontext,
          ),
        ),
      ),
    );
  }
}
