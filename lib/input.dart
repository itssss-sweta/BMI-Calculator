import 'package:flutter/material.dart';
import 'container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon.dart';

const bottomContainerHeight = 60.0;
const colorContainer = Color(0xFF1D1E33);
const inactiveContainerColor = Color(0xff111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveContainerColor;
  Color femaleCardColor = inactiveContainerColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveContainerColor) {
        maleCardColor = colorContainer;
        femaleCardColor = inactiveContainerColor;
      } else {
        maleCardColor = inactiveContainerColor;
      }
    } else if (gender == 2) {
      if (femaleCardColor == inactiveContainerColor) {
        femaleCardColor = colorContainer;
        maleCardColor = inactiveContainerColor;
      } else {
        femaleCardColor = inactiveContainerColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: const IconRow(
                          icon1: FontAwesomeIcons.mars, label: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          updateColor(2);
                        },
                      );
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: const IconRow(
                        icon1: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
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
                Expanded(
                  child: ReusableCard(
                    colour: colorContainer,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: colorContainer,
                  ),
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
