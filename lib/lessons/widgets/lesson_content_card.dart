import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

/*
  This widget is used to display a card with a title and a list of widgets
  It uses a Card widget to display the content and a SingleChildScrollView to allow scrolling
  The title is displayed at the top of the card and the list of widgets is displayed below
 */
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
        color: Theme.of(context).focusColor,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            controller: scrollController ?? ScrollController(),
            child: ConstrainedBox(
              constraints: constraints,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: AutoSizeText(
                      title,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.titleLarge,
                      maxFontSize: 32,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 16),
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
