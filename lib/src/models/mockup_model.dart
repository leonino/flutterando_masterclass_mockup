import 'dart:convert';

class MockupsModel {
  final int id;
  final String title;
  final String url;

  MockupsModel({
    required this.id,
    required this.title,
    required this.url,
  });

  @override
  String toString() => 'MockupsModel(id: $id, title: $title, url: $url)';

  List<MockupsModel> fetchAll() {
    return MOCKUPS.map((map) => MockupsModel.fromMap(map)).toList();
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'url': url,
    };
  }

  factory MockupsModel.fromMap(Map<String, dynamic> map) {
    return MockupsModel(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      url: map['url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MockupsModel.fromJson(String source) =>
      MockupsModel.fromMap(json.decode(source));
}

const MOCKUPS = [
  {
    'id': 1,
    'title': 'Mokup 01',
    'url': '',
  },
  {
    'id': 2,
    'title': 'Mockup 02',
    'url': '',
  },
];
