import 'package:flutter/material.dart';

Widget onBoarding({
  required String image,
  required String title,
  required String description,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 300,
        height: 300,
        // color: Colors.cyan,
        child: Image.asset(
          image,
        ),
      ),
      Text(
        title,
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Color(0xFF1F2937)),
      ),
      SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          description,
          style: TextStyle(fontSize: 12, color: Color(0xFF4B5563)),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
