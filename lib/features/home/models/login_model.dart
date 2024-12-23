import 'package:flutter/material.dart';

class LoginFieldModel {
  final String label;
  final String hint;
  final IconData prefix;
  IconButton? suffix;
  final TextEditingController? controller;
  bool obscureText;
  final TextInputType? keyboard;
  final String? Function(String?)? validator;

  LoginFieldModel({
    required this.label,
    required this.hint,
    required this.prefix,
    this.suffix,
    this.controller,
    this.obscureText = false,
    this.keyboard,
    this.validator,
  });
}
