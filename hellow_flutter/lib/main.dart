import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hello Flutter',
            style: TextStyle(fontSize: 28),
          ),
          centerTitle: true,
        ), // 상단바
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Image.network(
                    "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                    width: 81,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(labelText: '이메일'),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: '비밀번호'),
                ),
                Container(
                  width: double.infinity, //한도내에서 가장 크게
                  margin: EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('로그인'),
                  ),
                )
              ],
            ),
          ),
        ), // 화면 중앙에 가장 큰 면적
      ),
    );
  }
}
