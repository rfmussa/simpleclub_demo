import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letslearn/core/models/lessons.dart';
import 'package:letslearn/lessons/cubit/lesson_cubit.dart';
import 'package:letslearn/lessons/cubit/lessons_cubit.dart';
import 'package:letslearn/lessons/view/components_page.dart';
import 'package:letslearn/lessons/view/task_page.dart';
import 'package:letslearn/lessons/widgets/responsive_page_view_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class LessonDetailPage extends StatelessWidget {
  const LessonDetailPage({@QueryParam('id') this.lessonId, super.key});

  final String? lessonId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonsCubit, LessonsState>(
      builder: (context, lessonsState) {
        if (lessonsState is LessonsLoaded) {
          final lesson = lessonsState.lessons.firstWhere(
            (lesson) => lesson.id == lessonId,
            orElse: () => throw Exception('Lesson not found'),
          );
          return BlocProvider(
            create: (_) => LessonCubit(lesson),
            child: _LessonDetailView(lesson: lesson),
          );
        }
        return const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}

class _LessonDetailView extends StatefulWidget {
  const _LessonDetailView({required this.lesson});

  final LessonModel lesson;

  @override
  State<_LessonDetailView> createState() => _LessonDetailViewState();
}

class _LessonDetailViewState extends State<_LessonDetailView> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonCubit, LessonState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(state.lesson.title),
            leading: const AutoLeadingButton(),
          ),
          body: Column(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: context.read<LessonCubit>().pageCount,
                    effect: WormEffect(
                      dotWidth: 10,
                      dotHeight: 10,
                      activeDotColor: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              ResponsivePageViewWidget(
                pageController: _pageController,
                onPageChanged: context.read<LessonCubit>().onPageChanged,
                pages: [
                  for (final page in state.lesson.pages)
                    ComponentsPageWidget(page: page),
                  if (state.lesson.tasks != null)
                    TaskPageWidget(tasks: state.lesson.tasks!),
                ],
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
