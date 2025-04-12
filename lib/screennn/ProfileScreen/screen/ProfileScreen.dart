import 'package:cloneappblinket/screennn/PrintPage/screen/PrintPage.dart';
import 'package:cloneappblinket/screennn/ProfileScreen/widgets/buildInformationSection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/buildAccountSection.dart';
import '../widgets/buildFooter.dart';
import '../widgets/buildQuickActions.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back, size: 24),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Divider
            const Divider(height: 1, thickness: 1, color: Color(0xFFEEEEEE)),
            // Main Content
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Account Section
                      Buildaccountsection(),
                      const SizedBox(height: 20),

                      // Quick Actions
                      Buildquickactions(),
                      const SizedBox(height: 20),

                      // // Appearance
                      Text(
                        "YOUR INFORMATION",
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                          letterSpacing: 0.5,
                        ),
                      ),
                      // // Your Information
                      BuildInformationSection(
                        onTap: () {
                          Get.to(PrintPage());
                        },
                        leadingIcon: Icons.receipt_outlined,
                        title: "Your orders",
                        trailingIcon: Icons.chevron_right,
                      ),
                      BuildInformationSection(
                        leadingIcon: Icons.menu_book_outlined,
                        title: "Address book",
                        trailingIcon: Icons.chevron_right,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "OTHER INFORMATION",
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                          letterSpacing: 0.5,
                        ),
                      ),
                      // // Your Information
                      BuildInformationSection(
                        leadingIcon: Icons.share_outlined,
                        title: "Share the app",
                        trailingIcon: Icons.chevron_right,
                      ),
                      BuildInformationSection(
                        leadingIcon: Icons.info_outline,
                        title: "About us",
                        trailingIcon: Icons.chevron_right,
                      ),
                      // Footer
                      Buildfooter(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
