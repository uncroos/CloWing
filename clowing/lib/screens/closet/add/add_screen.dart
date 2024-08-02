import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('옷장 등록'),
        backgroundColor: Colors.grey[300],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              '내 옷장',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Implement image upload functionality
              },
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[300],
                child:
                    Icon(Icons.camera_alt, size: 40, color: Colors.grey[600]),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: '이름',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            DropdownButtonFormField<String>(
              items: [
                DropdownMenuItem(child: Text("카테고리 1"), value: "category1"),
                DropdownMenuItem(child: Text("카테고리 2"), value: "category2"),
              ],
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: '카테고리',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Text('컬러'),
            SizedBox(height: 10),
            Wrap(
              spacing: 8.0,
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
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: color,
                  ),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: '소재',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {
                    // Implement material tag capture functionality
                  },
                ),
              ),
              maxLength: 100,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: '설명',
                border: OutlineInputBorder(),
              ),
              maxLength: 100,
              maxLines: 3,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement form submission functionality
              },
              child: Text('완료'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: Text('상의'),
              onTap: () {
                // Implement navigation to 상의
              },
            ),
            ListTile(
              title: Text('하의'),
              onTap: () {
                // Implement navigation to 하의
              },
            ),
            ListTile(
              title: Text('아우터'),
              onTap: () {
                // Implement navigation to 아우터
              },
            ),
            ListTile(
              title: Text('신발'),
              onTap: () {
                // Implement navigation to 신발
              },
            ),
            ListTile(
              title: Text('가방'),
              onTap: () {
                // Implement navigation to 가방
              },
            ),
            ListTile(
              title: Text('패션소품'),
              onTap: () {
                // Implement navigation to 패션소품
              },
            ),
          ],
        ),
      ),
    );
  }
}
