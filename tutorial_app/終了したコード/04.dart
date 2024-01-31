import 'package:flutter/material.dart';

void main() {
  // カラム
  final img = Image.asset(
    'images/one.png',
  );

  final img2 = Image.network('https://picsum.photos/250?image=9');

  // ロー
  final row = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [img2, img],
  );

  // アプリ
  final app = MaterialApp(
    home: Scaffold(
      body: Center(
        child: row,
      ),
    ),
  );

  runApp(app);
}
