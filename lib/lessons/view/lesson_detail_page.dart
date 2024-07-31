import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letslearn/lessons/cubit/lesson_cubit.dart';
import 'package:letslearn/core/injection/locator.dart';
import 'package:letslearn/lessons/view/components_page.dart';
import 'package:letslearn/lessons/view/task_page.dart';
import 'package:letslearn/lessons/widgets/responsive_page_view_widget.dart';

@RoutePage()
class LessonDetailPage extends StatelessWidget {
  const LessonDetailPage({@PathParam('id') this.lessonId, super.key});

  final String? lessonId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LessonCubit(lessonId: lessonId),
      child: const _LessonDetailView(),
    );
  }
}

class _LessonDetailView extends StatefulWidget {
  const _LessonDetailView();

  @override
  State<_LessonDetailView> createState() => _LessonDetailViewState();
}

class _LessonDetailViewState extends State<_LessonDetailView> {
  late PageController _pageController;

  final _lessonCubit = getIt<LessonCubit>();

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
        return switch (state) {
          LessonInitial() => const Scaffold(
              body: Center(child: Text('Initializing...')),
            ),
          LessonLoading() => const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          LessonLoaded(:final lesson, :final currentPage) => Scaffold(
              appBar: AppBar(title: Text(lesson.title)),
              body: ResponsivePageViewWidget(
                pageController: _pageController,
                onPageChanged: _lessonCubit.onPageChanged,
                pages: [
                  ...lesson.pages
                      .map((page) => ComponentsPageWidget(page: page)),
                  if (lesson.tasks != null) TaskPageWidget(tasks: lesson.tasks!),
                ],
              ),
            ),
          LessonError(:final message) => Scaffold(
              body: Center(child: Text('Error: $message')),
            ),
        };
      },
    );
  }
}
