import 'package:clowing/screens/start/height_screen.dart';
import 'package:flutter/material.dart';

class AgeScreen extends StatefulWidget {
  @override
  _AgeScreenState createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  String? _selectedGender; // Changed to String? to handle null values

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor:
          Color.fromARGB(255, 255, 255, 255), // Light blue background color
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Text(
              '나이를\n선택해주세요!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            Text(
              '나이',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            DropdownButton<String>(
              isExpanded: true,
              value: _selectedGender,
              hint: Text('나이를 선택하세요'),
              items: <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(
                  value: '10대',
                  child: Text('10대'),
                ),
                DropdownMenuItem<String>(
                  value: '20대',
                  child: Text('20대'),
                ),
                DropdownMenuItem<String>(
                  value: '30대',
                  child: Text('30대'),
                ),
                DropdownMenuItem<String>(
                  value: '40대',
                  child: Text('40대'),
                ),
                DropdownMenuItem<String>(
                  value: '50대',
                  child: Text('50대'),
                ),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  _selectedGender = newValue;
                });
              },
            ),
            Spacer(), // This will take up the remaining space
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 60.0), // Adjust this value to move the button up
              child: nextPageButton(),
            ),
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
          MaterialPageRoute(builder: (context) => HeightScreen()),
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
              const Text(
                "다음",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
