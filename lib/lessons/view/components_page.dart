import 'package:auto_size_text/auto_size_text.dart';
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
            Condition.equals(
                name: MOBILE, value: BoxConstraints(minHeight: 300)),
            Condition.equals(
                name: TABLET,
                value: BoxConstraints(minHeight: 300, minWidth: 500)),
            Condition.equals(
                name: DESKTOP,
                value: BoxConstraints(minHeight: 300, minWidth: 500)),
            Condition.equals(
                name: '4K',
                value: BoxConstraints(minHeight: 300, minWidth: 500)),
          ],
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        page.title,
                        maxLines: 1,
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
