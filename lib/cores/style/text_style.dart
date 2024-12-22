import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nti_task/cores/style/size_app.dart';
import 'package:nti_task/cores/style/color_app.dart';

TextStyle appBarStyle() {
  return const TextStyle(
    color: colorApp.appBarColor,
    fontSize: SizeApp.s20,
  );
}

TextStyle bodyStyle() {
  return const TextStyle(fontSize: SizeApp.s40, fontWeight: FontWeight.bold);
}
