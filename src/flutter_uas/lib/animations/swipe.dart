import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwipeUpTransition extends PageRouteBuilder {
  final Widget page;

  SwipeUpTransition({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: Offset(0.0, 1.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class SwipeDownTransition extends PageRouteBuilder {
  final Widget page;

  SwipeDownTransition({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: Offset(0.0, -1.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}
