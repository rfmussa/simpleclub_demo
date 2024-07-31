import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class LessonContentCard extends StatelessWidget {
  const LessonContentCard({
    required this.title,
    required this.contentWidgets,
    required this.constraints,
    required this.scrollController,
    super.key,
  });

  final String title;
  final List<Widget> contentWidgets;

  // alternative could have used layout builder to get constraints of the parent
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: AutoSizeText(
                  title,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.titleLarge,
                  maxFontSize: 32,
                  minFontSize: 18,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 16),
              Flexible(
                child: ConstrainedBox(
                  constraints: constraints,
                  child: Scrollbar(
                    thickness: 4,
                    radius: const Radius.circular(4),
                    thumbVisibility: true,
                    controller: scrollController ,
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: contentWidgets,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
