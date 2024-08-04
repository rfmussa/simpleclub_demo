import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letslearn/core/injection/locator.dart';
import 'package:letslearn/core/models/lessons.dart';
import 'package:letslearn/core/repositories/lesson_repository.dart';
import 'package:letslearn/lessons/cubit/lesson_state.dart';

class LessonCubit extends Cubit<LessonState> {
  LessonCubit({LessonModel? lesson, String? lessonId})
      : super(const LessonState.initial()) {
    if (lesson != null) {
      emit(LessonState.data(lesson: lesson));
    } else if (lessonId != null) {
      _fetchLessonById(lessonId);
    }
  }

  final LessonRepository _repository = getIt<LessonRepository>();

  Future<void> _fetchLessonById(String lessonId) async {
    emit(const LessonState.loading());
    try {
      final lessons = await _repository.getLessons();
      final lesson = lessons.firstWhere(
        (lesson) => lesson.id == lessonId,
        orElse: () => throw Exception('Lesson not found'),
      );
      emit(LessonState.data(lesson: lesson));
    } catch (e) {
      emit(LessonState.error(e.toString()));
    }
  }

  void onPageChanged(int page) {
    final currentState = state;
    switch (currentState) {
      case Data():
        emit(
          LessonState.data(
            lesson: currentState.lesson,
            currentPage: page,
          ),
        );
      default:
        break;
    }
  }

  int get pageCount {
    final currentState = state;
    switch (currentState) {
      case Data():
        return currentState.lesson.pages.length;
      default:
        return 0;
    }
  }
}
