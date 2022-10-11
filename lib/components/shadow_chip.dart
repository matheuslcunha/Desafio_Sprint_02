import 'package:flutter/material.dart';

class customChip extends StatelessWidget {
  customChip({Key? key, required this.chipLabel});

  String chipLabel;

  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: 1,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      label: Text(
        chipLabel,
        style: TextStyle(
            fontFamily: 'TT Norms Pro',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF333333)),
      ),
    );
  }
}
