import 'package:flutter/material.dart';
import 'container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 45;
  int age = 21;

  //Alternative code for color selection

  // Color maleCardColor = inactiveContainerColor;
  // Color femaleCardColor = inactiveContainerColor;

  // void updateColor(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColor == inactiveContainerColor) {
  //       maleCardColor = colorContainer;
  //       femaleCardColor = inactiveContainerColor;
  //     } else {
  //       maleCardColor = inactiveContainerColor;
  //     }
  //   } else if (selectedGender == Gender.female) {
  //     if (femaleCardColor == inactiveContainerColor) {
  //       femaleCardColor = colorContainer;
  //       maleCardColor = inactiveContainerColor;
  //     } else {
  //       femaleCardColor = inactiveContainerColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kColorContainer
                        : kInactiveContainerColor,
                    cardChild: const IconRow(
                        icon1: FontAwesomeIcons.mars, label: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kColorContainer
                        : kInactiveContainerColor,
                    cardChild: const IconRow(
                      icon1: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kColorContainer,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Height',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kBoldTextStyle,
                      ),
                      const Text(
                        ' cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 15,
                      ),
                      overlayShape: const RoundSliderOverlayShape(
                        overlayRadius: 30,
                      ),
                      overlayColor: Color(0xeee15555),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
                        });
                      },
                      activeColor: Colors.white,
                      inactiveColor: const Color(0xff8d8e98),
                      thumbColor: const Color(0xffeb1555),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kColorContainer,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kBoldTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              onPressed: () {},
                              backgroundColor: Color(0xff4c4f5e),
                              child: Icon(
                                Icons.minimize,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            // SizedBox(
                            //   width: 20,
                            // ),
                            FloatingActionButton(
                              onPressed: () {},
                              backgroundColor: Color(0xff4c4f5e),
                              child: Icon(
                                Icons.add,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kColorContainer,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: kBottomContainerColor,
            height: kBottomContainerHeight,
            margin: const EdgeInsets.only(top: 20),
          ),
        ],
      ),
    );
  }
}
