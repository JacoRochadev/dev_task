import 'package:flutter/material.dart';

class ChangeDateButton extends StatelessWidget {
  final String date;
  final VoidCallback onPressed;
  const ChangeDateButton({
    super.key,
    required this.date,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
          border: Border.all(color: const Color(0xffe9e9e9)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            date,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
