// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'ColorApp',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: ColorBox(),
    ),
  ));
}

class ColorBox extends StatefulWidget {
  const ColorBox({super.key});

  @override
  State<ColorBox> createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  int leftTopBtn = 1;
  int rightTopBtn = 1;
  int leftBottomBtn = 1;
  int rightBottomBtn = 1;

  void changeColors() {
    rightBottomBtn = Random().nextInt(10) + 1;
    leftBottomBtn = Random().nextInt(10) + 1;
    rightTopBtn = Random().nextInt(10) + 1;
    leftTopBtn = Random().nextInt(10) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Image.asset('images/img$leftTopBtn.png'),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Image.asset('images/img$rightTopBtn.png'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(child: Image.asset('images/img$leftBottomBtn.png')),
              SizedBox(
                width: 16,
              ),
              Expanded(child: Image.asset('images/img$rightBottomBtn.png')),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: FilledButton(
            onPressed: () {
              setState(() {
                changeColors();
              });
            },
            child: Text('Change Colors'),
          ),
        ),
      ],
    );
  }
}
