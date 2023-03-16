import 'package:flutter/material.dart';

Widget CustomeButton({
  required String title,
  required Color primary,
  required Color onPrimary,
  required VoidCallback onPressed,
}) {
  return ConstrainedBox(
    constraints: BoxConstraints(
      minWidth: 256,
      minHeight: 49,
    ),
    child: ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
      style: ElevatedButton.styleFrom(
        primary: primary,
        onPrimary: onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );
}
