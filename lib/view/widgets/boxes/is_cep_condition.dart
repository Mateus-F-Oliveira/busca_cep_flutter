import 'package:flutter/material.dart';
import 'dart:core';

Widget isCEPCondition({required double size})
{
  return Align(
    alignment: Alignment.topCenter,
    child: Padding(
      padding: EdgeInsets.only(top: size*0.7),
      child: Container(
        color: Colors.grey[300],
        height: size*0.2,
        width: size*0.4,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF08446c),
              ),
              children: [
                TextSpan(
                  text: "<rua>, "
                ),
                TextSpan(
                  text: "<bairro> - "
                ),
                TextSpan(
                  text: "<cidade>, "
                ),
                TextSpan(
                  text: "<estado>"
                )
              ]
            ),
          ),
        ),
      ),
    ),
  );
}