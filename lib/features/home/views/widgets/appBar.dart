import 'package:flutter/material.dart';
import '../../../../cores/style/color_app.dart';

import '../../../../cores/style/text_style.dart';

AppBar appBar({required title}) {
  return AppBar(
    title: Text(
      title,
      style: appBarStyle(),
    ),
   centerTitle: true,
   // centerTitle: true,

  );
}
