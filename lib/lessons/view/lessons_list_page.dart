import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letslearn/core/injection/locator.dart';
import 'package:letslearn/core/models/lessons.dart';
import 'package:letslearn/core/routes/routes.dart';
import 'package:letslearn/lessons/cubit/lessons_cubit.dart';
import 'package:letslearn/lessons/cubit/lessons_state.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class LessonsListPage extends StatelessWidget {
  LessonsListPage({super.key});

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lessons'),
      ),
      body: BlocBuilder<LessonsCubit, LessonsState>(
        builder: (context, state) {
          return switch (state) {
            Loading() => const Center(child: CircularProgressIndicator()),
            Data() => switch (ResponsiveBreakpoints.of(context)) {
                final size when size.largerThan(MOBILE) =>
                  SizedBox.expand(child: _buildGrid(state.lessons, 2)),
                _ => _buildMobileList(state.lessons),
              },
            Error(:final message) => Center(child: Text('Error: $message')),
            _ => const Center(child: Text('No lessons available')),
          };
        },
      ),
    );
  }

  Widget _buildGrid(List<LessonModel> lessons, int columns) {
    // use ResponsiveValue for dynamic sized grid items
    return ResponsiveGridView.builder(
      alignment: Alignment.center,
      gridDelegate: const ResponsiveGridDelegate(
        crossAxisSpacing: 20, //mainAxisSpacing: 10,
        crossAxisExtent: 350,
      ),
      itemCount: lessons.length,
      padding: const EdgeInsets.all(20),
      itemBuilder: (context, index) =>
          _buildLessonCard(context, lessons[index]),
    );
  }

  Widget _buildMobileList(List<LessonModel> lessons) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: lessons.length,
          padding: const EdgeInsets.all(20),
          itemBuilder: (context, index) =>
              _buildLessonListTile(context, lessons[index]),
        ),
      ],
    );
  }

  Widget _buildLessonCard(BuildContext context, LessonModel lesson) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () => _navigateToLesson(context, lesson),
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              AutoSizeText(
                lesson.title,
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              AutoSizeText(
                lesson.description,
                style: Theme.of(context).textTheme.titleMedium,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
              Wrap(
                spacing: 4,
                runSpacing: 4,
                children: [
                  for (final tag in lesson.tags)
                    Chip(
                      label: Text(tag),
                      backgroundColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      labelStyle: TextStyle(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                    ),
                ],
              ),
              const Spacer(),
              Text(
                '${lesson.pages.length} Pages',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLessonListTile(BuildContext context, LessonModel lesson) {
    return ListTile(
      title: Text(lesson.title),
      subtitle: Text('${lesson.pages.length} Pages'),
      onTap: () => _navigateToLesson(context, lesson),
    );
  }

  void _navigateToLesson(BuildContext context, LessonModel lesson) {
    _appRouter.push(LessonDetailRoute(lessonId: lesson.id));
  }
}
