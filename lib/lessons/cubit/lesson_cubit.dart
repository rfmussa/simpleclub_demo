import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letslearn/core/models/lessons.dart';

class LessonCubit extends Cubit<LessonState> {
  LessonCubit(LessonModel lesson)
      : super(LessonState(currentPage: 0, lesson: lesson));

  int get pageCount =>
      state.lesson.pages.length + (state.lesson.tasks != null ? 1 : 0);

  void onPageChanged(int page) {
    emit(state.copyWith(currentPage: page));
  }
}

class LessonState {
  const LessonState({required this.currentPage, required this.lesson});
  final int currentPage;
  final LessonModel lesson;

  LessonState copyWith({
    int? currentPage,
    LessonModel? lesson,
  }) {
    return LessonState(
      currentPage: currentPage ?? this.currentPage,
      lesson: lesson ?? this.lesson,
    );
  }
}
