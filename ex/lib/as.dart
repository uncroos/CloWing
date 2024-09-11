import 'package:flutter/material.dart';

class SoScreen extends StatefulWidget { // Capitalize the class name according to Dart naming conventions
  @override
  _SoScreenState createState() => _SoScreenState();
}

class _SoScreenState extends State<SoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('내 옷장', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
