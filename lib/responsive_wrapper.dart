import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveBreakPointWrapper extends StatelessWidget {

  const ResponsiveBreakPointWrapper({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {

    return ResponsiveBreakpoints.builder(
      child: child,
      breakpoints: [
        const Breakpoint(start: 0, end: 440, name: MOBILE),
        const Breakpoint(start: 440, end: 850, name: TABLET),
        const Breakpoint(start: 850, end: 1920, name: DESKTOP),
        const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
      ],
    );
  }
}

class ResponsiveViewWrapper extends StatelessWidget {

  const ResponsiveViewWrapper({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaxWidthBox(
      maxWidth: 3840,
      background: Container(color: Colors.indigo),
      child: ResponsiveScaledBox(
        width: ResponsiveValue<double?>(context,
            conditionalValues: const [
              Condition.equals(name: MOBILE, value: 420),
              Condition.equals(name: TABLET, value: 800),
              Condition.equals(name: DESKTOP, value: 1800),
              Condition.equals(name: '4K', value: 3840),
            ]).value,
        child:
            BouncingScrollWrapper.builder(context, child, dragWithMouse: true),
      ),
    );
  }
}
