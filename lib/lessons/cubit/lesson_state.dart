import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:letslearn/core/models/lessons.dart';

part 'lesson_state.freezed.dart';

@freezed
sealed class LessonState with _$LessonState {
  const factory LessonState.initial() = Initial;

  const factory LessonState.loading() = Loading;

  const factory LessonState.data({
    required LessonModel lesson,
    @Default(0)int currentPage,
  }) = Data;

  const factory LessonState.error(String message) = Error;
}
