import 'package:clowing/screens/closet/add/add_screen.dart';
import 'package:flutter/material.dart';

class OotdButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(400, 50),
        backgroundColor: Color(0xFF63A0C3), // Background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7), // Rounded corners
        ),
        elevation: 2,
        padding: EdgeInsets.zero, // Remove default padding
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddScreen()),
        );
      },
      child: Container(
        height: 50,
        child: Center(
          child: Text(
            '룩북 만들기',
            style: TextStyle(
              color: Color.fromARGB(255, 229, 229, 229),
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
