import 'package:flutter/material.dart';
import 'package:nti_task/features/home/views/screens/register_screen.dart';

import '../../../../cores/style/login_list.dart';
import '../../../../cores/style/sign_up_in_string.dart';
import '../../../../cores/style/text_style.dart';
import '../../../../cores/widgets/custom_textField.dart';
import '../widgets/appBar.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 150, left: 20, right: 15),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 24.0,
                  bottom: 24.0,
                  right: 24.0,
                ),
                child: Column(
                  children: [
                    Text(
                      SignupInStrings.logTitle,
                      style: bodyStyle(),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      SignupInStrings.welcomeBack,
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              // CustomTextField(
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return "please enter a value";
              //     }
              //     if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
              //       return "Enter a valid email";
              //     }
              //     return null;
              //   },
              //   keyboard: TextInputType.emailAddress,
              //   label: SignupInStrings.emailLabel,
              //   hint: SignupInStrings.emailHint,
              //   prefix: Icons.email,
              //   controller: emailController,
              // ),
              // const SizedBox(height: 20),
              // CustomTextField(
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return "please enter a value";
              //     }
              //     if (value.length < 8) {
              //       return "Password must be at least 8 characters long";
              //     }
              //     return null;
              //   },
              //   keyboard: TextInputType.visiblePassword,
              //   label: SignupInStrings.passwordLabel,
              //   hint: SignupInStrings.passwordHint,
              //   prefix: Icons.lock,
              //   obscureText: visible,
              //   suffix: IconButton(
              //       onPressed: () {
              //         visible = !visible;
              //         setState(() {});
              //       },
              //       icon: visible == false
              //           ? const Icon(
              //               Icons.remove_red_eye,
              //             )
              //           : const Icon(
              //               Icons.visibility_off,
              //             )),
              //   controller: passwordController,
              // ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: loginFields.length,
                  itemBuilder: (context, index) {
                    final loginfield = loginFields[index];
                    if (loginfield.label == SignupInStrings.passwordLabel) {
                      loginfield.suffix = IconButton(
                        onPressed: () {
                          setState(() {
                            loginfield.obscureText = !loginfield.obscureText;
                          });
                        },
                        icon: Icon(
                          loginfield.obscureText ? Icons.visibility_off : Icons.visibility,
                        ),
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: CustomTextField(
                        label: loginfield.label,
                        hint: loginfield.hint,
                        prefix: loginfield.prefix,
                        suffix: loginfield.suffix,
                        controller: loginfield.controller,
                        keyboard: loginfield.keyboard,
                        obscureText: loginfield.obscureText,
                        validator: loginfield.validator,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Logging in...')),
                    );
                  }
                },
                child: Text(SignupInStrings.logTitle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    SignupInStrings.regToAccount,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      SignupInStrings.signUpButtonText,
                      style: TextStyle(
                        color: Color(0xff6759FF),
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xff6759FF),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
