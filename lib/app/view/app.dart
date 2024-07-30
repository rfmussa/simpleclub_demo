import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:letslearn/app/view/responsive_wrapper.dart';
import 'package:responsive_builder/responsive_builder.dart';
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

    return ResponsiveApp(
      builder: (context, ) {
     return    MaterialApp.router(
          theme: ThemeData(colorScheme: MaterialTheme.darkMediumContrastScheme()),
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
         builder: (context, child) => ResponsiveBreakPointWrapper(
           child: DevicePreview(
             enabled: false,
             builder: (context) => child!,
           ),
         )
        );
      },
    );
  }
}
