import 'package:cloneappblinket/screen/page/login.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Banner2 extends StatefulWidget {
  const Banner2({super.key});

  @override
  State<Banner2> createState() => _Banner2State();
}

class _Banner2State extends State<Banner2> {
  // @override
  // void initState() {
  //   super.initState();

  //   Future.delayed(Duration(seconds: 3), () {
  //     // Your code after 3 seconds delay
  //     print("Executed after 3 seconds");
  //     Get.to(Login());
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 204, 1),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                /// Text Section
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 30),
                          Text(
                            "Free coriander",
                            style: TextStyle(
                              fontSize: 36,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "on order with",
                            style: TextStyle(
                              fontSize: 36,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "fruits & vegetables",
                            style: TextStyle(
                              fontSize: 36,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                /// Bottom Image
                Positioned(
                  // bottom: 50,
                  top: 300,
                  left: 40,
                  right: 40,
                  child: Image.asset(
                    "assets/images/order.png",
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ),

                /// Top Banner Card
                Positioned(
                  top: 375,
                  left: 16,
                  right: 16,
                  child: Container(
                    height: 145,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 194, 245, 194),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 4, 93, 7),
                                ),
                                children: [
                                  TextSpan(
                                    text: "FREE\n",
                                    style: TextStyle(
                                      fontSize: 36,

                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: "coriander\n"),
                                  TextSpan(text: "bunch\n"),
                                  TextSpan(
                                    text: "on order with fruits\n",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 16, 150, 20),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "and vegetable \n",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 16, 150, 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Image.asset(
                          "assets/images/dha-removebg-preview.png",
                          height: 300,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
