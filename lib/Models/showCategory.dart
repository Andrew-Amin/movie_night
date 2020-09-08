import 'dart:convert';

class ShowCategory {
  final int id;
  final String name;

  ShowCategory({this.id, this.name});

  factory ShowCategory.fromJson(Map<String, dynamic> json) {
    return ShowCategory(
      id: json['id'] as int,
      name: json['name'] as String,
    );
  }
}
