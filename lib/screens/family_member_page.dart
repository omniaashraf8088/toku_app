import 'package:flutter/material.dart';
import 'package:learn_language/app_colors.dart';
import 'package:learn_language/widgets/items.dart';

import '../models/item_models.dart';

class FamilyMember extends StatelessWidget {
  FamilyMember({super.key});
  List<NumberModels> numbers = [
    NumberModels(
        image: 'assets/images/family_members/family_mother.png',
        enName: 'family_mother',
        arabName: 'mother',
        sound: 'sounds/family_members/mother.wav'),
    NumberModels(
        image: 'assets/images/family_members/family_son.png',
        enName: 'members/family_son',
        arabName: 'family_son',
        sound: 'sounds/family_members/son.wav'),
    NumberModels(
        image: 'assets/images/family_members/family_daughter.png',
        enName: 'family_daughter',
        arabName: 'daughter',
        sound: 'sounds/family_members/daughter.wav'),
    NumberModels(
        image: 'assets/images/family_members/family_father.png',
        enName: 'family_father',
        arabName: 'father',
        sound: 'sounds/family_members/father.wav'),
    NumberModels(
        image: 'assets/images/family_members/family_grandfather.png',
        enName: 'family_grandfather',
        arabName: 'grandfather',
        sound: 'sounds/family_members/grand father.wav'),
    NumberModels(
        image: 'assets/images/family_members/family_grandmother.png',
        enName: 'family_grandmother',
        arabName: 'grandmother',
        sound: 'sounds/family_members/grand mother.wav'),
    NumberModels(
        image: 'assets/images/family_members/family_older_brother.png',
        enName: 'family_older_brother',
        arabName: 'older_brother',
        sound: 'sounds/family_members/older bother.wav'),
    NumberModels(
        image: 'assets/images/family_members/family_older_sister.png',
        enName: 'family_older_sister',
        arabName: 'older_sister',
        sound: 'sounds/family_members/older sister.wav'),
    NumberModels(
        image: 'assets/images/family_members/family_younger_brother.png',
        enName: 'family_younger_brother',
        arabName: 'younger_brother',
        sound: 'sounds/family_members/younger brohter.wav'),
    NumberModels(
        image: 'assets/images/family_members/family_younger_sister.png',
        enName: 'family_younger_sister',
        arabName: 'younger_sister',
        sound: 'sounds/family_members/younger sister.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.memberColor,
        title: const Text(
          'Family Member',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Expanded(child: Items(number: numbers[index]));
        },
      ),
    );
  }
}
