import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mappy/router/router.dart';
import 'package:mappy/router/routes.dart';

import 'constants/app_colors.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              colorScheme:
                  ThemeData().colorScheme.copyWith(primary: AppColors.primary),
              appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: Colors.black54),
              )),
          onGenerateRoute: AppRouter.generateRoute,
          initialRoute: AppRoutes.splash,
          builder: (BuildContext context, Widget? child) {
            final MediaQueryData data = MediaQuery.of(context);
            var isPassive = data.textScaleFactor > 1.5;
            return MediaQuery(
                data: data.copyWith(
                  textScaleFactor: data.textScaleFactor * (isPassive ? 2 : 1),
                ),
                child: child!);
          },
        );
      },
    );
  }
}
