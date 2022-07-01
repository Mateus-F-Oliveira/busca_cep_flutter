import 'package:flutter/material.dart';
import 'dart:core';

class LoadingPage extends StatefulWidget
{
  const LoadingPage({Key? key}) : super(key: key);
  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage>
{
  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      appBar: null,
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Busca Cep"),
      ),
    );  
  }
}