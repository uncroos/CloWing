import 'package:flutter/material.dart';

class MyPageScreen extends StatefulWidget {
  @override
  _MyPageScreenState createState() => _MyPageScreenState();
}

class _MyPageScreenState extends State<MyPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('마이페이지'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
            Navigator.of(context).pop();
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Handle save button press
            },
            child: Text(
              '저장',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Color(0xFF90B4EA),
                  child:
                      Icon(Icons.person, size: 100, color: Color(0xFFC9DEFF)),
                ),
              ],
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
            ),
            InputBox(),
          ],
        ),
      ),
    );
  }
}

class InputBox extends StatelessWidget {
  final double width = 200;
  final double height = 60;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        textAlign: TextAlign.center, // 글자 중앙 정렬
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          hintText: '안요한',
          hintStyle: TextStyle(color: Color(0xFF959AA7)),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyPageScreen(),
  ));
}
