import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  final IconData icon;
  final Function() onPress;
  const FloatingButton({super.key, required this.icon, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      onPressed: onPress,
      constraints: const BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      shape: const CircleBorder(),
      fillColor: const Color(0xff4c4f5e),
      child: Icon(icon),
    );
  }
}
