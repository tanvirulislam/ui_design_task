import 'package:flutter/material.dart';

Widget formTitle({required String titel}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8, left: 10),
    child: Text(
      titel,
      style: TextStyle(
        fontSize: 14,
        color: Color(0xFF374151),
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
