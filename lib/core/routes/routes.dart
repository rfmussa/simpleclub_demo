import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:letslearn/core/models/lessons.dart';
import 'package:letslearn/lessons/view/lesson_detail_page.dart';
import 'package:letslearn/lessons/view/lessons_list_page.dart';
import 'package:letslearn/lessons/view/lessons_page.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LessonsRoute.page,
          path: '/',
          initial: true,
          children: [
            AutoRoute(
              path: 'lessons',
              page: LessonsListRoute.page,
              initial: true,
            ),
            AutoRoute(path: 'lesson', page: LessonDetailRoute.page,
            ),
          ],
        ),
        // Add more top-level routes here if needed
      ];
}
