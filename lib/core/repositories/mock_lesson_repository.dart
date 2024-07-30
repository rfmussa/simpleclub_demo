import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:letslearn/core/models/lessons.dart';
import 'package:letslearn/core/repositories/lesson_repository.dart';

class MockLessonRepository implements LessonRepository {
  @override
  Future<List<LessonModel>> getLessons() async {
    // Load the JSON file from assets
    final jsonString = await rootBundle.loadString('assets/response.json');
    final jsonData = json.decode(jsonString) as Map<String, dynamic>;

    final lessonsList = jsonData['lessons'] as List<dynamic>;


    // Convert JSON to Lesson objects
    return lessonsList
        .map((json) => LessonModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
