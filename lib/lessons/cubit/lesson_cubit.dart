import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letslearn/core/models/lessons.dart';
import 'package:letslearn/core/repositories/lesson_repository.dart';
import 'package:letslearn/core/injection/locator.dart';

class LessonCubit extends Cubit<LessonState> {
  LessonCubit({LessonModel? lesson, String? lessonId})
      : super(LessonInitial()) {
    if (lesson != null) {
      emit(LessonLoaded(lesson: lesson));
    } else if (lessonId != null) {
      _fetchLessonById(lessonId);
    }
  }

  final LessonRepository _repository = getIt<LessonRepository>();

  Future<void> _fetchLessonById(String lessonId) async {
    emit(LessonLoading());
    try {
      final lessons = await _repository.getLessons();
      final lesson = lessons.firstWhere(
        (lesson) => lesson.id == lessonId,
        orElse: () => throw Exception('Lesson not found'),
      );
      emit(LessonLoaded(lesson: lesson));
    } catch (e) {
      emit(LessonError(e.toString()));
    }
  }

  void onPageChanged(int page) {
    final currentState = state;
    if (currentState is LessonLoaded) {
      emit(LessonLoaded(lesson: currentState.lesson, currentPage: page));
    }
  }

  int get pageCount {
    final currentState = state;
    if (currentState is LessonLoaded) {
      return currentState.lesson.pages.length +
          (currentState.lesson.tasks != null ? 1 : 0);
    }
    return 0;
  }
}

// TODO use freezed/equatable to better represent state
sealed class LessonState {}

class LessonInitial extends LessonState {}

class LessonLoading extends LessonState {}

class LessonLoaded extends LessonState {
  LessonLoaded({required this.lesson, this.currentPage = 0});

  final LessonModel lesson;
  final int currentPage;
}

class LessonError extends LessonState {
  LessonError(this.message);

  final String message;
}
