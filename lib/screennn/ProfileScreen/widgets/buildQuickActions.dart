import 'package:flutter/material.dart';

import 'buildQuickActionItem.dart';

class Buildquickactions extends StatelessWidget {
  const Buildquickactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: BuildQuickActionItem(
              icon: Icons.chat_bubble_outline,
              label: 'Support',
            ),
          ),
          Expanded(
            child: BuildQuickActionItem(
              icon: Icons.credit_card,
              label: 'Payments',
            ),
          ),
        ],
      ),
    );
  }
}
