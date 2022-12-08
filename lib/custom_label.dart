import 'package:flutter/material.dart';

class CustomLabel extends StatelessWidget {
  const CustomLabel({required this.label, super.key});

  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: const Color(0xFF5038BC),
          width: 10,
          height: 50,
        ),
        Expanded(
            child: Container(
          color: const Color(0xFFFFD668),
          height: 50,
          padding: const EdgeInsets.only(top: 6, left: 6),
          child: Text(
            label,
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ))
      ],
    );
  }
}
