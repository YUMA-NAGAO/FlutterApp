import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:notion_memo/data/remote/notion_api_models.dart';

class NotionService {
  final String apiKey; // Notion APIキー
  final String databaseId; // NotionデータベースID

  NotionService({required this.apiKey, required this.databaseId});

  Future<List<NotionPage>> getPages() async {
    // TODO: Notion APIのエンドポイントや認証情報を設定する
    final url =
        Uri.parse('https://api.notion.com/v1/databases/\$databaseId/query');
    final headers = {
      'Authorization': 'Bearer \$apiKey',
      'Notion-Version': '2022-06-28', // 必要に応じてNotion APIのバージョンを更新
      'Content-Type': 'application/json',
    };

    final response =
        await http.post(url, headers: headers, body: json.encode({}));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final results = data['results'] as List;
      return results.map((page) => NotionPage.fromJson(page)).toList();
    } else {
      // TODO: エラーハンドリング
      throw Exception(
          'Failed to load pages from Notion: ${response.statusCode}');
    }
  }
}
