import 'package:flutter/material.dart';

class ButtonPeriodWidget extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const ButtonPeriodWidget({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 30,
          child: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
