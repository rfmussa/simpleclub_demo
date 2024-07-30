import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveBreakPointWrapper extends StatelessWidget {

  const ResponsiveBreakPointWrapper({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {

    return ResponsiveBreakpoints.builder(
      child: ResponsiveViewWrapper(child: child),
      breakpoints: [
        const Breakpoint(start: 0, end: 450, name: MOBILE),
        const Breakpoint(start: 451, end: 800, name: TABLET),
        const Breakpoint(start: 801, end: 1920, name: DESKTOP),
        //const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        //const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
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
      maxWidth: 1920,
      child: ResponsiveScaledBox(
        width: ResponsiveValue<double?>(context,
            conditionalValues: const [
              Condition.equals(name: MOBILE, value: 450),
              Condition.equals(name: TABLET, value: 800),
              Condition.equals(name: DESKTOP, value: 1000),
              //Condition.equals(name: '4K', value: 3840),
            ]).value,
        child:
            BouncingScrollWrapper.builder(context, child, dragWithMouse: true),
      ),
    );
  }
}

/// A convenience widget to wrap main blocks with:
///  - ResponsiveContraints for max width.
///  - A Center to allow constraints to work in a List.
class BlockWrapper extends StatelessWidget {

  const BlockWrapper(this.widget, {super.key});
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ResponsiveConstraints(conditionalConstraints: const [
        Condition.equals(name: MOBILE, value: BoxConstraints(maxWidth: 600)),
        Condition.equals(name: TABLET, value: BoxConstraints(maxWidth: 700)),
        Condition.largerThan(name: TABLET, value: BoxConstraints(maxWidth: 1280)),
      ], child: widget),
    );
  }
}
