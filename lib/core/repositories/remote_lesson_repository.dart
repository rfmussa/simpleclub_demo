import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:letslearn/core/models/lessons.dart';
import 'package:letslearn/core/repositories/lesson_repository.dart';


class RemoteLessonRepository implements LessonRepository {
  RemoteLessonRepository();

  final apiUrl =
      'https://gist.githubusercontent.com/rfmussa/4c3d206405be105aedafc58d8253c5ff/raw/67e9bc8d48d10d278284599ab4b7fabbd2de5d27/response.json';

  @override
  Future<List<LessonModel>> getLessons() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final jsonList = json.decode(response.body) as List<dynamic>;
      return jsonList
          .map((json) => LessonModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } else {
      throw Exception('Failed to load lessons');
    }
  }
}
