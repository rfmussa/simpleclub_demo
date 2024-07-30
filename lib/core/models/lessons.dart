import 'package:freezed_annotation/freezed_annotation.dart';

part 'lessons.freezed.dart';

part 'lessons.g.dart';

@freezed
class LessonModel with _$LessonModel {
  const factory LessonModel({
    required String id,
    required String title,
    required String description,
    required List<String> tags, // New field
    required List<ComponentPageModel> pages,
    List<TaskModel>? tasks,
  }) = _LessonModel;

  factory LessonModel.fromJson(Map<String, dynamic> json) =>
      _$LessonModelFromJson(json);
}

@freezed
class ComponentPageModel with _$ComponentPageModel {
  const factory ComponentPageModel({
    required String id,
    required String title, // New field
    required List<ComponentModel> components,
  }) = _ComponentPageModel;

  factory ComponentPageModel.fromJson(Map<String, dynamic> json) =>
      _$ComponentPageModelFromJson(json);
}

@Freezed(
  unionKey: 'type',
  unionValueCase: FreezedUnionCase.pascal,
  fallbackUnion: 'fallback',
)
sealed class ComponentModel with _$ComponentModel {
  const factory ComponentModel.text({
    required String content,
    String? title,
  }) = TextComponent;

  const factory ComponentModel.image({
    required String content,
    String? caption,
  }) = ImageComponent;

  const factory ComponentModel.fallback({
    required String content,
  }) = FallbackComponent;

  factory ComponentModel.fromJson(Map<String, dynamic> json) =>
      _$ComponentModelFromJson(json);
}

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    required String id,
    required String question,
    required List<OptionModel> options,
    required List<String> correctAnswerIds,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}

@freezed
class OptionModel with _$OptionModel {
  const factory OptionModel({
    required String id,
    required String text,
  }) = _OptionModel;

  factory OptionModel.fromJson(Map<String, dynamic> json) =>
      _$OptionModelFromJson(json);
}
