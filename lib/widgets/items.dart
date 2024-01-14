import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/item_models.dart';

class Items extends StatelessWidget {
  Items({super.key, required this.number});
  NumberModels number;
  bool isSelected=false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: isSelected? Colors.black:null,
      trailing: Container(
          color: const Color(0xff8570AC),
        child: IconButton(onPressed: (){
          final player = AudioPlayer();
          player.play(AssetSource(number.sound));

        },
          splashColor:Colors.cyanAccent,
            icon:const Icon(Icons.play_arrow),
        ),
      ),
      leading: Container(
        height: 100.0,
        width: 100.0,
        color: const Color(0xff94417A),
        child: Image.asset(number.image),
      ),
      title: Container(
          color: const Color(0xffC37BC1),
          child: Text(number.enName)),
      subtitle: Container(
          color: const Color(0xff732370),
          child: Text(number.arabName)),
    );
  }
}
