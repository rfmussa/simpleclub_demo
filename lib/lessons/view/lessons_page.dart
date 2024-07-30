import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letslearn/core/injection/locator.dart';
import 'package:letslearn/lessons/cubit/lessons_cubit.dart';

@RoutePage()
class LessonsPage extends StatelessWidget {
  const LessonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LessonsCubit>()..fetchLessons(),
      child: const AutoRouter(),
    );
  }
}
