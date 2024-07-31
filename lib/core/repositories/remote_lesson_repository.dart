import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:letslearn/core/models/lessons.dart';
import 'package:letslearn/core/repositories/lesson_repository.dart';

class RemoteLessonRepository implements LessonRepository {
  RemoteLessonRepository();

  final apiUrl =
      'https://gist.githubusercontent.com/rfmussa/4c3d206405be105aedafc58d8253c5ff/raw/d7e647f7b8db2f6912af8e45975d2976b7a92535/response.json';

  @override
  Future<List<LessonModel>> getLessons() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final lessonsJson = jsonData['lessons'] as List;
      final lessonsList = lessonsJson
          .map((lessonJson) =>
              LessonModel.fromJson(lessonJson as Map<String, dynamic>))
          .toList();
      return lessonsList;
    } else {
      throw Exception('Failed to load lessons');
    }
  }
}
