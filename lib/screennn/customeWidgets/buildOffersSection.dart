import 'package:cloneappblinket/screennn/customeWidgets/CustomText.dart';
import 'package:flutter/material.dart';

class Buildofferssection extends StatefulWidget {
  const Buildofferssection({super.key});

  @override
  State<Buildofferssection> createState() => _BuildofferssectionState();
}

class _BuildofferssectionState extends State<Buildofferssection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      color: const Color.fromARGB(255, 138, 247, 151),
      child: Column(
        children: [
          Image.asset(
            "assets/uiImages/image 63.png",
            height: 150,
            width: 150,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 10),
          CustomText(
            text: "Recordering will be easy",
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          CustomText(
            text:
                "Items you order will show up here so you can buy then again easily",
            fontWeight: FontWeight.w500,
            fontSize: 14,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
