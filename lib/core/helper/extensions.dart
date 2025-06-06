import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }
  // Future<dynamic> push(String routeName, {Object? arguments}) {
  //   return Navigator.of(this).push(routeName, arguments: arguments);
  // }
  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
    required RoutePredicate predicats,
  }) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      predicats,
      arguments: arguments,
    );
  }
  void pop()=> Navigator.of(this).pop();
}
