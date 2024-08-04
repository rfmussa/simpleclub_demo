import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:letslearn/core/models/lessons.dart';

class ComponentWidget extends StatelessWidget {
  const ComponentWidget({
    required this.component,
    super.key,
  });

  final ComponentModel component;

  @override
  Widget build(BuildContext context) {
    switch (component) {
      case final TextComponent component:
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: AutoSizeText(
                component.text,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        );
      case final ImageComponent component:
        //TODO use Image that comes from model, instead of using a placeholder image
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Image.network(
            'https://picsum.photos/500/300',
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error);
            },
          ),
        );
      case FallbackComponent():
        return const SizedBox.shrink();
    }
  }
}
