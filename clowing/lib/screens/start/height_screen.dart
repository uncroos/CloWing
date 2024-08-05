import 'package:clowing/screens/start/login_successful_screen.dart';
import 'package:flutter/material.dart';

class HeightScreen extends StatefulWidget {
  @override
  _HeightScreenState createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
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
              '추가정보를\n입력해주세요!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            Text(
              '키',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            DropdownButton<String>(
              isExpanded: true,
              value: _selectedGender,
              hint: Text('키를 선택하세요'),
              items: <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(
                  value: '149cm 이하',
                  child: Text('149cm 이하'),
                ),
                DropdownMenuItem<String>(
                  value: '150cm',
                  child: Text('150cm'),
                ),
                DropdownMenuItem<String>(
                  value: '155cm',
                  child: Text('155cm'),
                ),
                DropdownMenuItem<String>(
                  value: '160cm',
                  child: Text('160cm'),
                ),
                DropdownMenuItem<String>(
                  value: '165cm',
                  child: Text('165cm'),
                ),
                DropdownMenuItem<String>(
                  value: '170cm',
                  child: Text('170cm'),
                ),
                DropdownMenuItem<String>(
                  value: '175cm',
                  child: Text('175cm'),
                ),
                DropdownMenuItem<String>(
                  value: '180cm',
                  child: Text('180cm'),
                ),
                DropdownMenuItem<String>(
                  value: '185cm',
                  child: Text('185cm'),
                ),
                DropdownMenuItem<String>(
                  value: '190cm',
                  child: Text('190cm'),
                ),
                DropdownMenuItem<String>(
                  value: '191cm 이상',
                  child: Text('191cm 이상'),
                ),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  _selectedGender = newValue;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '몸무게',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            DropdownButton<String>(
              isExpanded: true,
              value: _selectedGender,
              hint: Text('몸무게를 선택하세요'),
              items: <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(
                  value: '39kg 이하',
                  child: Text('39kg 이하'),
                ),
                DropdownMenuItem<String>(
                  value: '40kg',
                  child: Text('40kg'),
                ),
                DropdownMenuItem<String>(
                  value: '45kg',
                  child: Text('45kg'),
                ),
                DropdownMenuItem<String>(
                  value: '50kg',
                  child: Text('50kg'),
                ),
                DropdownMenuItem<String>(
                  value: '55kg',
                  child: Text('55kg'),
                ),
                DropdownMenuItem<String>(
                  value: '60kg',
                  child: Text('60kg'),
                ),
                DropdownMenuItem<String>(
                  value: '65kg',
                  child: Text('65kg'),
                ),
                DropdownMenuItem<String>(
                  value: '70kg',
                  child: Text('70kg'),
                ),
                DropdownMenuItem<String>(
                  value: '75kg',
                  child: Text('75kg'),
                ),
                DropdownMenuItem<String>(
                  value: '80kg',
                  child: Text('80kg'),
                ),
                DropdownMenuItem<String>(
                  value: '85kg',
                  child: Text('85kg'),
                ),
                DropdownMenuItem<String>(
                  value: '90kg',
                  child: Text('90kg'),
                ),
                DropdownMenuItem<String>(
                  value: '95kg',
                  child: Text('95kg'),
                ),
                DropdownMenuItem<String>(
                  value: '100kg',
                  child: Text('100kg'),
                ),
                DropdownMenuItem<String>(
                  value: '101kg 이상',
                  child: Text('101kg 이상'),
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
          MaterialPageRoute(builder: (context) => LoginSuccessfulScreen()),
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
