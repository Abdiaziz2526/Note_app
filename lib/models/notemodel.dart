import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Notes {
  final String id;
  final String title;
  final String description;
  final String date;
  Notes({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'date': date,
    };
  }

  factory Notes.fromMap(Map<String, dynamic> map) {
    return Notes(
      id: map['_id'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      date: map['date'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Notes.fromJson(String source) => Notes.fromMap(json.decode(source) as Map<String, dynamic>);
}
