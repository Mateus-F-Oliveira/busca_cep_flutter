import 'package:busca_cep/view/widgets/boxes/is_not_cep_condition.dart';
import 'package:busca_cep/view/widgets/boxes/is_cep_condition.dart';
import 'package:flutter/material.dart';
import 'dart:core';

Widget searchOutput({required double size, dynamic searchResult})
{
  if(searchResult == null)
  {
    return const SizedBox(child: null);
  }
  else
  {
    if(isCEP(searchResult: searchResult) == true)
    {
      return isCEPCondition(size: size);
    }
    else
    {
      return isNotCEPCondition(size: size);
    }
  }
}

bool isCEP({required dynamic searchResult})
{
  return true;
}