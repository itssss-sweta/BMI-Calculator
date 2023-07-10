import 'package:flutter/material.dart';
import 'container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon.dart';

const bottomContainerHeight = 60.0;
const colorContainer = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                ReusableCard(
                  colour: colorContainer,
                  cardChild:
                      IconRow(icon1: FontAwesomeIcons.mars, label: 'MALE'),
                ),
                ReusableCard(
                  colour: colorContainer,
                  cardChild:
                      IconRow(icon1: FontAwesomeIcons.venus, label: 'FEMALE'),
                ),
              ],
            ),
          ),
          const ReusableCard(
            colour: colorContainer,
          ),
          const Expanded(
            child: Row(
              children: [
                ReusableCard(
                  colour: colorContainer,
                ),
                ReusableCard(
                  colour: colorContainer,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: bottomContainerColor,
            height: bottomContainerHeight,
            margin: const EdgeInsets.only(top: 20),
          ),
        ],
      ),
    );
  }
}
