import 'package:flutter/material.dart';
import 'package:nti_task/cores/style/sign_up_in_string.dart';
import 'package:nti_task/cores/widgets/custom_textField.dart';
import '../../features/home/models/register_model.dart';



final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
bool visible = true;

final List<CustomFieldModel> registerFields = [
  CustomFieldModel(
    label: SignupInStrings.nameLabel,
    hint: SignupInStrings.nameHint,
    prefix: Icons.account_circle,
    validator: (value) {
      if (value == null || value.isEmpty) return "Please enter a name";
      if (value.length < 3) return "Name must be at least 3 characters long";
      return null;
    },
  ),
  CustomFieldModel(
    label: SignupInStrings.nationalIdLabel,
    hint: SignupInStrings.nationalIdHint,
    prefix: Icons.perm_identity_outlined,
    keyboard: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) return "Please enter a value";
      if (value.length != 14) return "National ID must be 14 digits";
      return null;
    },
  ),
  CustomFieldModel(
    label: SignupInStrings.phoneLabel,
    hint: SignupInStrings.phoneHint,
    prefix: Icons.phone,
    keyboard: TextInputType.phone,
    validator: (value) {
      if (value == null || value.isEmpty) return "Please enter a value";
      if (value.length != 11) return "Phone number must be 11 digits";
      return null;
    },
  ),
  CustomFieldModel(
    label: SignupInStrings.emailLabel,
    hint: SignupInStrings.emailHint,
    prefix: Icons.email,
    controller: emailController,
    keyboard: TextInputType.emailAddress,
    validator: (value) {
      if (value == null || value.isEmpty) return "Please enter an email";
      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) return "Enter a valid email";
      return null;
    },
  ),
  CustomFieldModel(
    label: SignupInStrings.passwordLabel,
    hint: SignupInStrings.passwordHint,
    prefix: Icons.lock,
    controller: passwordController,
    obscureText: true,
    keyboard: TextInputType.visiblePassword,
    validator: (value) {
      if (value == null || value.isEmpty) return "Please enter a password";
      if (value.length < 8) return "Password must be at least 8 characters long";
      return null;
    },
  ),
  CustomFieldModel(
    label: SignupInStrings.tokenLabel,
    hint: SignupInStrings.tokenHint,
    prefix: Icons.token,
    validator: (value) {
      if (value == null || value.isEmpty) return "Please enter a value";
      if (value.length < 5) return "Token must be at least 5 characters long";
      return null;
    },
  ),
];
