import 'package:flutter/material.dart';
import 'package:the_doctors/Core/Routing/manage_routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_doctors/Core/Routing/routes.dart';
import 'package:the_doctors/Core/Theming/Coloring.dart';

class DoctorApp extends StatelessWidget {
  final ManageRoutes manageRoutes;
  const DoctorApp({super.key, required this.manageRoutes});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doctor\'s App',
        onGenerateRoute: manageRoutes.generateRoute,
        initialRoute: Routes.onBoarding,
        theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white),
      ),
    );
  }
}
