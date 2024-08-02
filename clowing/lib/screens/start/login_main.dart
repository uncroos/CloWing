import 'package:clowing/screens/start/gender_screen.dart';
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
            Image.asset(
              'assets/images/F2.png', // Replace with your logo image asset path
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 20), // Adds space between image and button
            getKakaoLoginButton(),
          ],
        ),
      ),
    );
  }

  Widget getKakaoLoginButton() {
    return InkWell(
      onTap: () {
        // Navigate to the login successful screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GenderScreen()),
        );
      },
      child: Card(
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        elevation: 2,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFFFFE812),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 10),
              Image.asset(
                'assets/images/chat.png',
                height: 24, // 원하는 높이로 설정
                width: 24, // 원하는 너비로 설정
              ),
              const SizedBox(width: 10),
              const Text(
                "카카오로 1초만에 시작하기",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
