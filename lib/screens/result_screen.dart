// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/components/components.dart';
import 'package:bmi_calculator/styles/colors.dart';
import 'package:bmi_calculator/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResultScreen extends StatelessWidget {
  final String bmiResult;
  final String getResult;
  final String interpretation;

  const ResultScreen({
    super.key,
    required this.bmiResult,
    required this.getResult,
    required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: subTitltStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              color: activeCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    getResult.toUpperCase(),
                    style: resultStyle,
                  ),
                  Text(
                    bmiResult,
                    style: resultStyle.copyWith(
                      color: Colors.white,
                      fontSize: 100,
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: resultStyle.copyWith(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          buildBottom(
            onTap: () {
              Navigator.pop(context);
            },
            title: 'Re-Calculate Your Bmi'.toUpperCase(),
          )
        ],
      ),
    );
  }
}
