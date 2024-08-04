import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letslearn/core/injection/locator.dart';
import 'package:letslearn/core/models/lessons.dart';
import 'package:letslearn/core/repositories/lesson_repository.dart';
import 'package:letslearn/lessons/cubit/lessons_state.dart';

class LessonsCubit extends Cubit<LessonsState> {
  LessonsCubit() : super(const Initial());
  final LessonRepository _repository = getIt<LessonRepository>();

  Future<void> fetchLessons() async {
    emit(const Loading());
    try {
      final lessons = await _repository.getLessons();
      emit(Data(lessons));
    } catch (e) {
      emit(Error(e.toString()));
    }
  }
}
