import 'package:flutter/material.dart';
import 'package:learn_language/app_colors.dart';
import 'package:learn_language/widgets/items.dart';

import '../models/item_models.dart';

class ColorPage extends StatelessWidget {
  ColorPage({super.key});
  List<NumberModels> numbers = [
    NumberModels(
        image: 'assets/images/colors/color_black.png',
        enName: 'color_black',
        arabName: 'black',
        sound: 'sounds/colors/black.wav'),
    NumberModels(
        image: 'assets/images/colors/color_brown.png',
        enName: 'color_brown',
        arabName: 'brown',
        sound: 'sounds/colors/brown.wav'),
    NumberModels(
        image: 'assets/images/colors/color_gray.png',
        enName: 'color_gray',
        arabName: 'gray',
        sound: 'sounds/colors/gray.wav'),
    NumberModels(
        image: 'assets/images/colors/color_green.png',
        enName: 'color_green',
        arabName: 'grean',
        sound: 'sounds/colors/green.wav'),

    NumberModels(
        image: 'assets/images/colors/color_red.png',
        enName: 'color_red',
        arabName: 'red',
        sound: 'sounds/colors/red.wav'),
    NumberModels(
        image: 'assets/images/colors/color_white.png',
        enName: 'color_white',
        arabName: 'white',
        sound: 'sounds/colors/white.wav'),
    NumberModels(
        image: 'assets/images/colors/yellow.png',
        enName: 'colors/yellow',
        arabName: 'yellow',
        sound: 'sounds/colors/yellow.wav'),
    NumberModels(
        image: 'assets/images/colors/color_dusty_yellow.png',
        enName: 'dusty_yellow',
        arabName: 'dusty_yellow',
        sound: 'sounds/colors/dusty yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.colorColor,
        title: const Text(
          'Color',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Items(number: numbers[index]);
        },
      ),
    );
  }
}
