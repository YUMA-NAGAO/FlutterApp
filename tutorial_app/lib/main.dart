import 'package:flutter/material.dart';

/*

2023年 最新の Flutter で
カラムとローが const に対応しました🎉 

動画の中ではまだ対応していないと言っていましたが
このファイルでは修正してあります

*/

void main() {
  // カラム
  final img = Image.asset(
    'images/one.png',
  );

  // ロー
  final row = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [img, img, img],
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
