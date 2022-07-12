import 'package:busca_cep/model/address.dart';
import 'package:flutter/material.dart';

class HomeController{
  Address address = new Address();
  TextEditingController textField = new TextEditingController();

  HomeController();

  void searchCode(String code){
    if(code.isNotEmpty && code.length == 8){
      address.searchCode(code);
    }else{
      print("Invalid code");
    }
  }
}