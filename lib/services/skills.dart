import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio/models/skills_model.dart';

class GetSkills {
  // bool isLoaded = false;

  Future<List<Skill>> fetchSkills() async {
    final response = await http
        .get(Uri.parse('https://api-port1.herokuapp.com/api/skills.json'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      // isLoaded = true;
      return compute(parseSkill, response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

// A function that converts a response body into a List<Photo>.
  List<Skill> parseSkill(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Skill>((json) => Skill.fromJson(json)).toList();
  }











Future<List<DevTool>> fetchDevTools() async {
    final response = await http
        .get(Uri.parse('https://api-port1.herokuapp.com/api/otherskills.json'));

    if (response.statusCode == 200) {
      return compute(parseDevTool, response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

// A function that converts a response body into a List<Photo>.
  List<DevTool> parseDevTool(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<DevTool>((json) => DevTool.fromJson(json)).toList();
  }








  // Future<DevTool> fetchDevTools() async {
  //   final response = await http.get(
  //       Uri.https('https://api-port1.herokuapp.com/api/', 'otherskills.json'));

  //   if (response.statusCode == 200) {
  //     // If the server did return a 200 OK response,
  //     // then parse the JSON.
  //     // isLoaded = true;
  //     return DevTool.fromJson(jsonDecode(response.body));
  //   } else {
  //     // If the server did not return a 200 OK response,
  //     // then throw an exception.
  //     throw Exception('Failed to load album');
  //   }
  // }
}
