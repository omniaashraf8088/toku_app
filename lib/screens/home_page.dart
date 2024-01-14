import 'package:flutter/material.dart';
import 'package:learn_language/app_colors.dart';
import 'package:learn_language/screens/color_page.dart';
import 'package:learn_language/screens/family_member_page.dart';
import 'package:learn_language/screens/number_page.dart';
import 'package:learn_language/screens/phases.dart';

import '../widgets/category_container.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appColor,
      appBar: AppBar(
        backgroundColor:AppColor.appbarColor,
        title: const Text('Learn Japanese',style: TextStyle(fontSize: 32,color:Colors.white
        ),),
      ),
      body:Column(
        children: [
          CategoryContainer(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return  NumberPage();
              }));
            },
            text: 'Numbers',
            color: AppColor.numColor,
          ),
          CategoryContainer(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return  FamilyMember();
              }));
            },
            text: 'Family Members',
            color: AppColor.memberColor,
          ),
          CategoryContainer(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ColorPage();
              },
              ),
              );
            },
            text: 'Color',
            color: AppColor.colorColor,
          ),
          CategoryContainer(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return PhasesPage();
              },
              ),
              );
            },
            text: 'Phases',
            color: AppColor.phasesColor,
          ),

        ],
      )
    );
  }
}
