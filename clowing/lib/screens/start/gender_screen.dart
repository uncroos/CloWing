import 'package:clowing/screens/start/age_screen.dart';
import 'package:flutter/material.dart';

class GenderScreen extends StatefulWidget {
  @override
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
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
              '성별을\n선택해주세요!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            Text(
              '성별',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            DropdownButton<String>(
              isExpanded: true,
              value: _selectedGender,
              hint: Text('성별을 선택하세요'),
              items: <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(
                  value: '여자',
                  child: Text('여자'),
                ),
                DropdownMenuItem<String>(
                  value: '남자',
                  child: Text('남자'),
                ),
                DropdownMenuItem<String>(
                  value: '기타',
                  child: Text('기타'),
                ),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  _selectedGender = newValue;
                });
              },
            ),
            SizedBox(
              height: 420,
              width: double.infinity,
            ),
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
          MaterialPageRoute(builder: (context) => AgeScreen()),
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
