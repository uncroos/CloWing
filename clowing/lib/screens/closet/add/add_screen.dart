import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              '내 옷장',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Implement image upload functionality
                  },
                  child: Container(
                    width: 120,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.camera_alt,
                        size: 50, color: Colors.grey[600]),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: '이름',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField<String>(
                        items: [
                          DropdownMenuItem(child: Text("상의"), value: "상의"),
                          DropdownMenuItem(child: Text("하의"), value: "하의"),
                          DropdownMenuItem(child: Text("아우터"), value: "아우터"),
                          DropdownMenuItem(child: Text("신발"), value: "신발"),
                          DropdownMenuItem(child: Text("가방"), value: "가방"),
                          DropdownMenuItem(child: Text("패션소품"), value: "패션소품"),
                        ],
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          labelText: '카테고리',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              '컬러',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 5.5,
              children: [
                for (var color in [
                  Colors.red,
                  Colors.orange,
                  Colors.yellow,
                  Colors.green,
                  Colors.blue,
                  Colors.purple,
                  Colors.pink,
                  Colors.grey,
                  Colors.white,
                  Colors.black,
                  Colors.brown
                ])
                  Container(
                    width: 30,
                    height: 30,
                    color: color,
                  ),
              ],
            ),
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('소재'),
                    Text(
                      '100자까지 입력 가능합니다.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.camera_alt),
                      onPressed: () {
                        // Implement material tag capture functionality
                      },
                    ),
                    counterText: '',
                  ),
                  maxLength: 100,
                ),
              ],
            ),
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('설명'),
                    Text(
                      '100자까지 입력 가능합니다.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    counterText: '',
                  ),
                  maxLength: 100,
                  maxLines: 3,
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
