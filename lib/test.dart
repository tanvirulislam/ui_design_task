import 'package:flutter/material.dart';
import 'package:ui_design_task/const.dart';

class Text extends StatelessWidget {
  const Text({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 576,
      color: Colors.grey.shade100,
      child: Column(
        children: [
          Container(
            height: 200,
            width: 100,
            color: primaryColor,
          ),
        ],
      ),
    );
  }
}
