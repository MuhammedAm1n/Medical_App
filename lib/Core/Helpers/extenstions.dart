import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? argument}) {
    return Navigator.of(this).pushNamed(routeName, arguments: argument);
  }

  Future<dynamic> pushReplacementName(String routeName, {Object? argument}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: argument);
  }

  Future<dynamic> pushNamedandRemoveUntil(String routeName,
      {Object? argument, required RoutePredicate routePredicate}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, routePredicate,
        arguments: argument);
  }

  void pop() => Navigator.of(this).pop();
}
