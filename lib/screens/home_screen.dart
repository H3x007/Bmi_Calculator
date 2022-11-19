// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'dart:math';

import 'package:bmi_calculator/components/calculate.dart';
import 'package:bmi_calculator/components/components.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/styles/colors.dart';
import 'package:bmi_calculator/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // variable
  bool isMale = true;
  int height = 120;
  //Color color = Colors.grey;
  int age = 20;
  int weight = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: isMale ? activeCardColor : inActiveCardColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 50,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text('MALE', style: titltStyle),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: isMale ? inActiveCardColor : activeCardColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(
                            FontAwesomeIcons.venus,
                            size: 50,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text('FEMALE', style: titltStyle),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: activeCardColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'HEIGHT',
                    style: titltStyle,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text('${height.round()}', style: subTitltStyle),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'cm',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.white,
                    inactiveColor: Color(0xFF8D8E98),
                    value: height.toDouble(),
                    min: 70.0,
                    max: 220.0,
                    onChanged: (double value) {
                      setState(() {
                        height = value.round();
                      });
                    },
                  )
                ],
              ),
            ),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: activeCardColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('AGE', style: titltStyle),
                          Text(
                            '$age',
                            style: subTitltStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                mini: true,
                                heroTag: 'age-',
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                ),
                              ),
                              FloatingActionButton(
                                mini: true,
                                heroTag: 'age+',
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: activeCardColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('WEIGHT', style: titltStyle),
                          Text('$weight', style: subTitltStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                mini: true,
                                heroTag: 'weight-',
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                ),
                              ),
                              FloatingActionButton(
                                mini: true,
                                heroTag: 'weight+',
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: buildBottom(
              title: 'CALCULATE',
              onTap: () {
                // var result = weight / pow(height / 100, 2);
                // print(result.round());

                CalculateBmi cal = CalculateBmi(height: height, weight: weight);
                navigateTo(
                  context,
                  ResultScreen(
                    bmiResult: cal.bmiCalculate(),
                    getResult: cal.getResult(),
                    interpretation: cal.getInterpretation(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
