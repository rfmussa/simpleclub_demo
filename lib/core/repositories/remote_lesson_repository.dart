import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:letslearn/core/models/lessons.dart';
import 'package:letslearn/core/repositories/lesson_repository.dart';

class RemoteLessonRepository implements LessonRepository {
  RemoteLessonRepository();

  final apiUrl =
      'https://gist.githubusercontent.com/rfmussa/4c3d206405be105aedafc58d8253c5ff/raw/96273a4e8a44816fb26d38975f9b1ca2010340f4/response.json';

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
