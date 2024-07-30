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
                    maxLines: 2,
                    style: Theme.of(context).textTheme.titleLarge,
                    maxFontSize: 32,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      ...contentWidgets,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
