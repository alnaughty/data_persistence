import 'package:flutter/material.dart';

class ThemeFetcher {
  final BuildContext context;
  ThemeFetcher(this.context);
  Color get primaryColor => Theme.of(context).primaryColor;
}