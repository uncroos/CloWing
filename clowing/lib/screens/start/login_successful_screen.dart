import 'package:clowing/screens/mypage_screen.dart';
import 'package:flutter/material.dart';

class LoginSuccessfulScreen extends StatefulWidget {
  @override
  _LoginSuccessfulScreenState createState() => _LoginSuccessfulScreenState();
}

class _LoginSuccessfulScreenState extends State<LoginSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 255, 255, 255), // Light blue background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 230,
            ),
            Image.asset(
              'assets/images/F2.png', // Replace with your logo image asset path
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 210), // Adds space between image and button
            nextPageButton(),
          ],
        ),
      ),
    );
  }

  Widget nextPageButton() {
    return InkWell(
      onTap: () {
        // Navigate to the login successful screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyPageScreen()),
        );
      },
      child: Card(
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        elevation: 2,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFFC9DEFF),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 10),
              const SizedBox(width: 10),
              const Text(
                "클로윙 시작하기",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
