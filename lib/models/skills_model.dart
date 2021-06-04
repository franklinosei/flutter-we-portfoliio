import 'package:flutter/cupertino.dart';

class Skill {
  final String name;
  final int level;

  Skill({@required this.name, @required this.level});

  factory Skill.fromJson(Map<String, dynamic> json) {
    return Skill(
      name: json['name'] as String,
      level: json['level'] as int,
    );
  }
}

class DevTool {
  final String name;
  final int level;

  DevTool({@required this.name, @required this.level});

  factory DevTool.fromJson(Map<String, dynamic> json) {
    return DevTool(
      name: json['name'] as String,
      level: json['level'] as int,
    );
  }
}
