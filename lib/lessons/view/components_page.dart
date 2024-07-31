import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:letslearn/core/models/lessons.dart';
import 'package:letslearn/lessons/widgets/component_widget.dart';
import 'package:letslearn/lessons/widgets/lesson_content_card.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_builder/responsive_builder.dart';


class ComponentsPageWidget extends StatelessWidget {
  const ComponentsPageWidget({
    required this.page,
    super.key,
  });

  final ComponentPageModel page;

  @override
  Widget build(BuildContext context) {
    final constraints = BoxConstraints(maxHeight: 40.sh, minWidth: 60.sw);
    final contentWidgets = page.components
        .map((component) => ComponentWidget(component: component))
        .toList();

    return LessonContentCard(
      title: page.title,
      contentWidgets: contentWidgets,
      constraints: constraints,
      scrollController: ScrollController(),
    );
  }
}
