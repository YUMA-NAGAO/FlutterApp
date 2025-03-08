// TODO: Notion APIのレスポンスモデルを定義する
// 例:
// class NotionPage {
//   final String id;
//   final String title;
//   final String content;
//
//   NotionPage({required this.id, required this.title, required this.content});
//
//   factory NotionPage.fromJson(Map<String, dynamic> json) {
//     return NotionPage(
//       id: json['id'],
//       title: json['properties']['title']['title'][0]['plain_text'],
//       content: json['properties']['content']['rich_text'][0]['plain_text'],
//     );
//   }
// }

// あくまでダミーです。必要に応じてNotion APIの仕様に合わせて定義してください。
class NotionPage {
  final String id;

  NotionPage({required this.id});
  factory NotionPage.fromJson(Map<String, dynamic> json) {
    return NotionPage(id: json['id'] ?? '');
  }
}
