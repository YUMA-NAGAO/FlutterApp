import 'package:flutter/material.dart';
import 'package:notion_memo/data/local/database.dart';
import 'package:notion_memo/presentation/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    // ローカルDBの初期化
    await Database.initialize(); // Databaseクラスは後で実装

    // キャッシュされたメモの取得 (仮)
    // final memos = await Database.getMemos();

    // HomePageへ遷移
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
