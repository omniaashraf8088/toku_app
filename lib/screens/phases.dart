import 'package:flutter/material.dart';
import 'package:learn_language/app_colors.dart';
import 'package:learn_language/models/phases_models.dart';
import 'package:learn_language/widgets/phases_item.dart';

class PhasesPage extends StatelessWidget {
  PhasesPage({super.key});
  List<PhaseModel> phases = [
   const PhaseModel(sound: 'sounds/phrases/are_you_coming.wav', text: 'Are U Coming'),
    const PhaseModel(sound: 'sounds/phrases/dont_forget_to_subscribe.wav', text: 'dont_forget_to_subscribe'),
    const PhaseModel(sound: 'sounds/phrases/how_are_you_feeling.wav', text: 'how_are_you_feeling'),
    const PhaseModel(sound: 'sounds/phrases/i_love_anime.wav', text: 'i_love_anime'),
    const PhaseModel(sound: 'sounds/phrases/i_love_programming.wav', text: 'i_love_programming'),
    const PhaseModel(sound: 'sounds/phrases/programming_is_easy.wav', text: 'programming_is_easy'),
    const PhaseModel(sound: 'sounds/phrases/what_is_your_name.wav', text: 'what_is_your_name'),
    const PhaseModel(sound: 'sounds/phrases/where_are_you_going.wav', text: 'where_are_you_going'),
    const PhaseModel(sound: 'sounds/phrases/yes_im_coming.wav', text: 'yes_im_coming'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.numColor,
      appBar: AppBar(
        backgroundColor: AppColor.phasesColor,
        title: const Text(
          'Phases',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phases.length,
        itemBuilder: (context, index) {
          return PhasesItems( phases: phases[index],);
        },
      ),
    );
  }
}
