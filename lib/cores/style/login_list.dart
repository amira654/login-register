import 'package:flutter/material.dart';
import 'package:nti_task/cores/style/sign_up_in_string.dart';

import '../../features/home/models/login_model.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

final List<LoginFieldModel> loginFields = [
  LoginFieldModel(
    label: SignupInStrings.emailLabel,
    hint: SignupInStrings.emailHint,
    prefix: Icons.email,
    controller: emailController,
    keyboard: TextInputType.emailAddress,
    validator: (value) {
      if (value == null || value.isEmpty) return "Please enter a value";
      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) return "Enter a valid email";
      return null;
    },
  ),
  LoginFieldModel(
    label: SignupInStrings.passwordLabel,
    hint: SignupInStrings.passwordHint,
    prefix: Icons.lock,
    controller: passwordController,
    obscureText: true,
    keyboard: TextInputType.visiblePassword,
    validator: (value) {
      if (value == null || value.isEmpty) return "Please enter a value";
      if (value.length < 8) return "Password must be at least 8 characters long";
      return null;
    },
  ),
];
