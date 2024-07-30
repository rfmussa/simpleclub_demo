import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class LessonContentCard extends StatelessWidget {
  const LessonContentCard({
    required this.title,
    required this.contentWidgets,
    required this.constraints,
    this.scrollController,
    super.key,
  });

  final String title;
  final List<Widget> contentWidgets;
  final BoxConstraints constraints;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        child: Container(
          constraints: constraints,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              controller: scrollController ?? ScrollController(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    title,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.titleLarge,
                    minFontSize: 12,
                    maxFontSize: 32,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 16),
                  ...contentWidgets,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}