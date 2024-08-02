import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 255, 255, 255), // Light blue background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // More flexible space at the top
            Image.asset(
              'assets/images/F2.png', // Replace with your logo image asset path
              width: 250,
              height: 250,
            ),
          ],
        ),
      ),
    );
  }
}

Widget nextPageButton() {
  return InkWell(
    child: Card(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      elevation: 2,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFF80ABEE),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 10),
            const SizedBox(width: 10),
            const Text(
              "다음",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 17),
            ),
          ],
        ),
      ),
    ),
  );
}
