import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:busca_cep/view/pages/home_page.dart';
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
    double size = (MediaQuery.of(context).size.height);
    return Scaffold(
      appBar: null,
      backgroundColor: const Color(0xFFFFFAFA),
      body: EasySplashScreen(
        logo: Image.asset("lib/assets/images/logo.png"),
        logoSize: size*0.24,
        durationInSeconds: 3,
        navigator: const HomePage(),
        loaderColor: const Color(0xFF08446c),
        showLoader: true,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}