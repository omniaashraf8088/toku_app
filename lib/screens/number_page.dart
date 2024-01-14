import 'package:flutter/material.dart';
import 'package:learn_language/app_colors.dart';
import 'package:learn_language/widgets/items.dart';

import '../models/item_models.dart';

class NumberPage extends StatelessWidget {
  NumberPage({super.key});
  List<NumberModels> numbers = [
    NumberModels(
        image: 'assets/images/numbers/number_one.png',
        enName: 'ONE',
        arabName: 'ONE',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    NumberModels(
        image: 'assets/images/numbers/number_two.png',
        enName: 'TWO',
        arabName: 'TWO',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    NumberModels(
        image: 'assets/images/numbers/number_three.png',
        enName: 'THREE',
        arabName: 'THREE',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    NumberModels(
        image: 'assets/images/numbers/number_four.png',
        enName: 'FOUR',
        arabName: 'FOUR',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    NumberModels(
        image: 'assets/images/numbers/number_five.png',
        enName: 'FIVE',
        arabName: 'FIVE',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    NumberModels(
        image: 'assets/images/numbers/number_six.png',
        enName: 'SIX',
        arabName: 'SIX',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    NumberModels(
        image: 'assets/images/numbers/number_seven.png',
        enName: 'ONE',
        arabName: 'SEVEN',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    NumberModels(
        image: 'assets/images/numbers/number_eight.png',
        enName: 'EIGHT',
        arabName: 'EIGHT',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    NumberModels(
        image: 'assets/images/numbers/number_nine.png',
        enName: 'NINE',
        arabName: 'NINE',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    NumberModels(
        image: 'assets/images/numbers/number_ten.png',
        enName: 'TEN',
        arabName: 'TEN',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.numColor,
        title: const Text(
          'Number',
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
