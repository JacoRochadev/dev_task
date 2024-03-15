import 'package:flutter/material.dart';

class TextinputMetaWidget extends StatelessWidget {
  final String label;
  final TextEditingController textEditingController;
  const TextinputMetaWidget({
    super.key,
    required this.label,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 30,
            child: TextFormField(
              controller: textEditingController,
            ),
          ),
        ),
      ],
    );
  }
}
