import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:letslearn/core/models/lessons.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../widgets/lesson_content_card.dart';

class TaskPageWidget extends StatefulWidget {
  const TaskPageWidget({required this.tasks, super.key});

  final List<TaskModel> tasks;

  @override
  State<TaskPageWidget> createState() => _TaskPageWidgetState();
}

class _TaskPageWidgetState extends State<TaskPageWidget> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final constraints = ResponsiveValue<BoxConstraints>(
          context,
          conditionalValues: [
            Condition.equals(
                name: MOBILE,
                value: BoxConstraints(maxWidth: 100.sw, minHeight: 90.sh)),
            Condition.equals(
                name: TABLET, value: BoxConstraints(maxHeight: 70.sw)),
            Condition.equals(
                name: DESKTOP, value: BoxConstraints(maxHeight: 80.sw)),
          ],
        ).value ??
        BoxConstraints(maxHeight: 80.sh, minWidth: 60.sw);

    final contentWidgets = widget.tasks.map(_buildTaskCard).toList();

    return LessonContentCard(
      title: 'Tasks',
      contentWidgets: contentWidgets,
      constraints: constraints,
    );
  }

  Widget _buildTaskCard(TaskModel task) {
    return TaskCard(
      task: task,
    );
  }
}

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.task});

  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.question,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            FormBuilderCheckboxGroup<String>(
              name: 'task_${task.id}',
              separator: const SizedBox.shrink(),
              options: task.options
                  .map(
                    (option) => FormBuilderFieldOption(
                      value: option.id,
                      child: Text(option.text),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
