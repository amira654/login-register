import 'package:flutter/material.dart';
import 'package:nti_task/cores/style/sign_up_in_string.dart';

import '../../features/home/models/BMI_model.dart';
import 'BMI_strings.dart';


final List<BMIModel> bmiFields = [
  BMIModel(
    label: BMIString.heightLabel,
    hint: BMIString.heightHint,
    prefix: Icons.height,
    controller: TextEditingController(),
    keyboard: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) return "Please enter a value";
      return null;
    },
  ),
  BMIModel(
    label: BMIString.weightLabel,
    hint: BMIString.weightHint,
    prefix: Icons.line_weight,
    controller: TextEditingController(),
    keyboard: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) return "Please enter a value";
      return null;
    },
  ),
];
