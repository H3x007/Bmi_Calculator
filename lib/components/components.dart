// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/styles/colors.dart';
import 'package:bmi_calculator/styles/styles.dart';
import 'package:flutter/material.dart';

Widget buildBottom({required onTap, required String title}) => GestureDetector(
      onTap: onTap,
      child: Container(
        // ignore: sort_child_properties_last
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.end,
            style: titltStyle.copyWith(color: Colors.white70),
          ),
        ),
        color: bottomColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 5.0),
        width: double.infinity,
        height: 60,
      ),
    );

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
