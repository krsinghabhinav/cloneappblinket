import 'package:flutter/material.dart';

class BuildInformationSection extends StatelessWidget {
  final String? title;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final VoidCallback? onTap;

  const BuildInformationSection({
    super.key,
    this.title,
    this.leadingIcon,
    this.trailingIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Icon(leadingIcon, size: 22, color: Colors.black54),
            const SizedBox(width: 16),
            Text(
              title ?? '',
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const Spacer(),
            Icon(trailingIcon, size: 22, color: Colors.black38),
          ],
        ),
      ),
    );
  }
}
