import 'package:flutter/material.dart';
import 'dart:core';

Widget searchButton({required double size, TextEditingController? controller})
{
  return Align(
    alignment: Alignment.topCenter,
    child: Padding(
      padding: EdgeInsets.only(top: size*0.6),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF08446c),
          borderRadius: BorderRadius.all(Radius.circular(6))
        ),
        height: size*0.06,
        width: size*0.14,
        child: TextButton(
          onPressed: () async
          {
            
          },
          child: const Text(
            "BUSCAR",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFFFFFAFA)
            ),
          ),
        ),
      ),
    ),
  );
}