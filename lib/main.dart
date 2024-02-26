import 'package:flutter/material.dart';
import 'package:the_doctors/Core/Routing/manage_routes.dart';
import 'package:the_doctors/doctor_app.dart';

void main() {
  runApp(
    DoctorApp(
      manageRoutes: ManageRoutes(),
    ),
  );
}
