import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:letslearn/core/models/lessons.dart';


class ComponentWidget extends StatelessWidget {
  const ComponentWidget({
    required this.component, super.key,
  });

  final ComponentModel component;

  @override
  Widget build(BuildContext context) {
    switch (component) {
      case TextComponent():
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  component.content,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ],
        );
      case ImageComponent():
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Image.network(
            component.content,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error);
            },
          ),
        );
      case FallbackComponent():
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            'Unsupported component: ${component.content} ',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        );
    }
  }
}
