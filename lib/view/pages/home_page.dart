import 'package:busca_cep/view/widgets/buttons/search_button.dart';
import 'package:busca_cep/view/widgets/buttons/exit_button.dart';
import 'package:busca_cep/view/widgets/texts/search_output.dart';
import 'package:busca_cep/view/widgets/ui_components/input_border.dart';
import 'package:flutter/material.dart';
import 'dart:core';

class HomePage extends StatefulWidget
{
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context)
  {
    double size = (MediaQuery.of(context).size.height);
    return Scaffold(
      appBar: null,
      backgroundColor: const Color(0xFFFFFAFA),
      body: Stack(
        children: [
          searchBar(size: size),
          searchButton(size: size),
          searchOutput(size: size),
          exitButton(size: size)
        ],
      ),
    );  
  }
}

TextEditingController searchController = TextEditingController();

Widget searchBar({required double size})
{
  return Align(
    alignment: Alignment.topCenter,
    child: Padding(
      padding: EdgeInsets.only(top: size*0.45),
      child: SizedBox(
        height: size*0.1,
        width: size*0.4,
        child: Center(
          child: TextField(
            controller: searchController,
            enabled: true,
            style: const TextStyle(
              color: Color(0xFF08446c),
              fontSize: 16
            ),
            decoration: InputDecoration(
              labelText: "Endereço ou CEP",
              labelStyle: const TextStyle(
                fontSize: 12,
                color: Color(0xFF08446c),
              ),
              border: inputBorder(),
              enabledBorder: inputBorder(),
              focusedBorder: inputBorder(),
            ),
          ),
        ),
      ),
    ),
  );
}