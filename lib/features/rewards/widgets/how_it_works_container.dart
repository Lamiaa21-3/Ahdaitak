import 'package:flutter/material.dart';

class HowItWorksContainer extends StatelessWidget {
  const HowItWorksContainer({super.key});

  @override
  Widget build(BuildContext context) {

      return Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Text('⚙️ محتوى كيف تعمل'),
      );

  }
}
