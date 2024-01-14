import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_language/app_colors.dart';
import 'package:learn_language/screens/home_page.dart';

void main(){
  runApp(LearnEnglishLanguage());
}
class LearnEnglishLanguage extends StatelessWidget {
  const LearnEnglishLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage() ,
    );
  }
}
