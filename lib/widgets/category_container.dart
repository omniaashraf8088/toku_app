
import 'package:flutter/material.dart';
class CategoryContainer extends StatelessWidget {
   CategoryContainer({super.key,required this.text,required this.color, required this.onTap});
  String text;
  Color color;
   VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap:onTap,
          child: Container(
            padding: EdgeInsets.only(right: 16),
            alignment: Alignment.centerLeft,
            width: double.infinity,
            color:color ,
            height: 80,
            child: Text(text,style: TextStyle(fontSize: 28,color:Colors.white,
            ),
                    ),
          ),
        ),
      ],
    );
  }
}
