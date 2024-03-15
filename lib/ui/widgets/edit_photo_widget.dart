import 'package:flutter/material.dart';

class EditPhotoWidget extends StatelessWidget {
  const EditPhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xfff0f0f0),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        child: Row(
          children: [
            CircleAvatar(),
            SizedBox(
              width: 8,
            ),
            Text(
              'Editar Foto',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
