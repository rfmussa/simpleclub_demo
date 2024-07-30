import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:letslearn/app/view/responsive_wrapper.dart';
import 'package:letslearn/core/injection/locator.dart';
import 'package:letslearn/core/routes/routes.dart';
import 'package:letslearn/theme.dart';



class App extends StatelessWidget {
  App({super.key});

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    // final defaultTheme = MaterialTheme.darkMediumContrastScheme();
    // final textTheme = createTextTheme(context, 'Poppins', 'Poppins');
    // final theme = AppTheme.midnight(textTheme: textTheme);
    // final theme3 = AppTheme.midnightLight(
    //   textTheme: textTheme,
    // );
    // final theme4 = AppTheme.twilight(textTheme: textTheme);
    // final theme5 = AppTheme.twilightLight(textTheme: textTheme);

    return MaterialApp.router(
      theme: ThemeData(colorScheme: MaterialTheme.darkHighContrastScheme()),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      builder: (context, child) => DevicePreview(
        enabled: true,
        builder: (context) =>  ResponsiveBreakPointWrapper(
          child: child!,
        )
      ),
    );
  }
}
