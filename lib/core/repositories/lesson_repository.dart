
import 'package:letslearn/core/models/lessons.dart';

abstract class LessonRepository {
  Future<List<LessonModel>> getLessons();
}
