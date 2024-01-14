import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/phases_models.dart';


class PhasesItems extends StatelessWidget {
   PhasesItems({super.key,required this.phases});
   PhaseModel phases;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(phases.text),
      trailing:  Container(
      //  color: const Color(0xff8570AC),
        child: IconButton(onPressed: (){
          final player = AudioPlayer();
          player.play(AssetSource(phases.sound));
        },
          splashColor:Colors.cyanAccent,
          icon:const Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
