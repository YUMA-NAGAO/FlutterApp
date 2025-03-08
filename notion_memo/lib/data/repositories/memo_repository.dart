import 'package:notion_memo/data/local/dao/memo_dao.dart';
import 'package:notion_memo/data/remote/notion_service.dart';
import 'package:notion_memo/domain/models/memo_model.dart';

class MemoRepository {
  final MemoDao localDataSource; // Hive
  final NotionService remoteDataSource; // Notion API

  MemoRepository(
      {required this.localDataSource, required this.remoteDataSource});

  // TODO: ローカルとリモートからデータを取得・統合するロジックを実装する
  Future<List<Memo>> getMemos() async {
    // 1. ローカルDBからメモを取得
    // 2. Notion APIからメモを取得
    // 3. ローカルとリモートのメモをマージ (必要に応じて競合解決)
    // 4. マージしたメモのリストを返す

    // 仮実装
    return [];
  }
}
