import 'package:hive/hive.dart';
import 'package:notion_memo/domain/models/memo_model.dart';

// part 'memo_dao.g.dart'; // Hive Generatorによって生成されるファイル

// @HiveType(typeId: 0) // typeIdはユニークなID
// class MemoHiveObject extends HiveObject {
//   @HiveField(0)
//   late String id;

//   @HiveField(1)
//   late String title;

//   @HiveField(2)
//   late String content;
// }

class MemoDao {
  // TODO: HiveのBox操作を実装する
  // Box<MemoHiveObject> get _memoBox => Hive.box<MemoHiveObject>('memos');

  // Future<List<Memo>> getMemos() async {
  //   return _memoBox.values.map((e) => Memo(id: e.id, title: e.title, content: e.content)).toList();
  // }

  // Future<void> saveMemo(Memo memo) async {
  //   final memoHiveObject = MemoHiveObject()
  //       ..id = memo.id
  //       ..title = memo.title
  //       ..content = memo.content;
  //   await _memoBox.put(memo.id, memoHiveObject); // keyにidを使う
  // }

  // Future<void> deleteMemo(String id) async {
  //   await _memoBox.delete(id);
  // }

  // Hive を利用するための仮実装
  Future<List<Memo>> getMemos() async {
    return [];
  }
}
