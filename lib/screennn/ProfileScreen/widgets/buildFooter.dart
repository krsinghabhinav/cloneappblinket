import 'package:flutter/material.dart';

class Buildfooter extends StatelessWidget {
  const Buildfooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Center(
        child: Column(
          children: [
            Text(
              'blinkit',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: Colors.grey[400],
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'v17.11.1',
              style: TextStyle(fontSize: 12, color: Colors.grey[400]),
            ),
          ],
        ),
      ),
    );
  }
}
