import 'package:bmi_calculator/constants.dart';
import '../components/container.dart';
import 'package:flutter/material.dart';

import '../components/buttombutton.dart';

class Results extends StatelessWidget {
  const Results({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
          // style: kLargeButtontext,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          const Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kColorContainer,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI is low, you should eat more',
                    style: kDescTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          ButtomButton(
            buttonTitle: 'Re-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
