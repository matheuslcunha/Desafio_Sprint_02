import 'package:flutter/material.dart';

class brightChip extends StatelessWidget {
  brightChip({Key? key, required this.chipLabel});

  String chipLabel;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      label: Text(
        chipLabel,
        style: TextStyle(
            fontFamily: 'TT Norms Pro',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xFF403E3E)),
      ),
    );
  }
}
