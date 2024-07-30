import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letslearn/core/injection/locator.dart';
import 'package:letslearn/core/models/lessons.dart';
import 'package:letslearn/core/repositories/lesson_repository.dart';

sealed class LessonsState {}

class LessonsInitial extends LessonsState {}

class LessonsLoading extends LessonsState {}

class LessonsLoaded extends LessonsState {
  LessonsLoaded(this.lessons);
  final List<LessonModel> lessons;
}

class LessonsError extends LessonsState {
  LessonsError(this.message);
  final String message;
}

class LessonsCubit extends Cubit<LessonsState> {
  LessonsCubit() : super(LessonsInitial());
  final LessonRepository _repository = getIt<LessonRepository>();

  Future<void> fetchLessons() async {
    emit(LessonsLoading());
    try {
      final lessons = await _repository.getLessons();
      emit(LessonsLoaded(lessons));
    } catch (e) {
      emit(LessonsError(e.toString()));
    }
  }
}
