import 'package:flutter/material.dart';
import 'package:navigation/routes.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
