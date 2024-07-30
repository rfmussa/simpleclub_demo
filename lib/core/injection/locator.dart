import 'package:get_it/get_it.dart';
import 'package:letslearn/core/repositories/lesson_repository.dart';
import 'package:letslearn/core/repositories/mock_lesson_repository.dart';
import 'package:letslearn/core/routes/routes.dart';
import 'package:letslearn/lessons/cubit/lessons_cubit.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt
    ..registerLazySingleton<LessonRepository>(
      MockLessonRepository.new,
      // () => RemoteLessonRepository(apiUrl: 'https://api.example.com/lessons'),
    )
    ..registerLazySingleton<AppRouter>(
      AppRouter.new,
    )
    ..registerLazySingleton<LessonsCubit>(
      LessonsCubit.new,
    );


}
