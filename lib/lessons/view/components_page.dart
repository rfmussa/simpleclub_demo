import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:letslearn/core/models/lessons.dart';
import 'package:letslearn/lessons/widgets/component_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ComponentsPageWidget extends StatelessWidget {
  const ComponentsPageWidget({
    required this.page,
    super.key,
  });

  final ComponentPageModel page;


@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Card(
      child: ResponsiveConstraints(
        conditionalConstraints: const [
          Condition.smallerThan(
              name: TABLET,
              value: BoxConstraints( minHeight: 300)),
          Condition.largerThan(
              name: TABLET,
              value: BoxConstraints(minHeight: 300, minWidth: 500)),
        ],
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      page.title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    for (final component in page.components)
                      ComponentWidget(component: component),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    ),
  );
}
}
