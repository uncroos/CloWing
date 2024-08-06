import 'package:flutter/material.dart';

class WashingDetailsScreen extends StatelessWidget {
  final String itemName;
  final String imagePath;

  WashingDetailsScreen({required this.itemName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("세탁기"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 200, height: 200),
            SizedBox(height: 20),
            Text(itemName, style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
