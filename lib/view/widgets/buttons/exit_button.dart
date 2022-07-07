import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:core';

Widget exitButton({required double size})
{
  return Align(
    alignment: Alignment.topCenter,
    child: Padding(
      padding: EdgeInsets.only(top: size*0.94),
      child: SizedBox(
        height: size*0.04,
        width: size*0.12,
        child: TextButton(
          onPressed: () => SystemNavigator.pop(),
          child: const Text(
            "SAIR",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF08446c),
            ),
          ),
        ),
      ),
    ),
  );
}