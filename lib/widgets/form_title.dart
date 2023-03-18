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

Widget customeTitle({
  required String titel,
  required double fontsize,
}) {
  return Text(
    titel,
    style: TextStyle(
      color: Color(0xFF1F2937),
      fontSize: fontsize,
      fontWeight: FontWeight.w500,
    ),
  );
}

Widget customeSubTitle({
  required String subtitle,
  required double fontsize,
}) {
  return Text(
    subtitle,
    style: TextStyle(
      color: Color(0xFF6B7280),
      fontSize: fontsize,
    ),
  );
}
