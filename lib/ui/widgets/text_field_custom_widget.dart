import 'package:flutter/material.dart';

class TextFieldCustomWidget extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  const TextFieldCustomWidget({
    super.key,
    required this.label,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 35,
          child: TextFormField(
            controller: controller,
          ),
        ),
      ],
    ));
  }
}
