import 'package:hive_flutter/hive_flutter.dart';

class Database {
  static Future<void> initialize() async {
    await Hive.initFlutter();
    // 必要に応じてBoxを開くなどの処理を追加
  }
}
