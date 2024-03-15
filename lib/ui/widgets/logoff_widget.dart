import 'package:flutter/material.dart';

class LogoffWidget extends StatelessWidget {
  final String name;
  final String logoff;
  final VoidCallback logoffPress;

  const LogoffWidget({
    super.key,
    required this.name,
    required this.logoff,
    required this.logoffPress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(),
        const SizedBox(
          width: 8,
        ),
        Column(
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff0f268a),
              ),
            ),
            GestureDetector(
              onTap: logoffPress,
              child: Text(
                logoff,
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff0f268a),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
