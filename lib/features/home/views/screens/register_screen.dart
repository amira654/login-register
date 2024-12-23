import 'package:flutter/material.dart';

import '../../../../cores/style/list_custom_field.dart';
import '../../../../cores/style/sign_up_in_string.dart';
import '../../../../cores/style/text_style.dart';
import '../../../../cores/widgets/custom_textField.dart';
import '../widgets/appBar.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool visible = true;
  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    emailController.addListener(() {
      setState(() {});
    });
    passwordController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                  left: 24.0,
                  bottom: 24.0,
                  right: 24.0,
                ),
                child: Column(
                  children: [
                    Text(
                      SignupInStrings.regTitle,
                      style: bodyStyle(),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      SignupInStrings.createAccountText,
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
              //     if (value.length < 3) {
              //       return "Name must be at least 3 characters long";
              //     }
              //
              //     return null;
              //   },
              //   label: SignupInStrings.nameLabel,
              //   hint: SignupInStrings.nameHint,
              //   prefix: Icons.account_circle,
              // ),
              // const SizedBox(height: 20),
              // CustomTextField(
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return "please enter a value";
              //     }
              //     if (value.length != 14) {
              //       return "National ID must be 14 digits";
              //     }
              //
              //     return null;
              //   },
              //   keyboard: TextInputType.number,
              //   label: SignupInStrings.nationalIdLabel,
              //   hint: SignupInStrings.nationalIdHint,
              //   prefix: Icons.perm_identity_outlined,
              // ),
              // const SizedBox(height: 20),
              // CustomTextField(
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return "please enter a value";
              //     }
              //     if (value.length != 11) {
              //       return "Phone number must be 11 digits";
              //     }
              //
              //     return null;
              //   },
              //   keyboard: TextInputType.phone,
              //   label: SignupInStrings.phoneLabel,
              //   hint: SignupInStrings.phoneHint,
              //   prefix: Icons.phone,
              // ),
              // const SizedBox(height: 20),
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
              //   obscureText: visible,
              //   label: SignupInStrings.passwordLabel,
              //   hint: SignupInStrings.passwordHint,
              //   prefix: Icons.lock,
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
              // const SizedBox(height: 20),
              // CustomTextField(
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return "please enter a value";
              //     }
              //     if (value.length < 5) {
              //       return "Token must be at least 5 characters long";
              //     }
              //     return null;
              //   },
              //   label: SignupInStrings.tokenLabel,
              //   hint: SignupInStrings.tokenHint,
              //   prefix: Icons.token,
              // ),
              // const SizedBox(height: 20),
              SizedBox(
                height: 450,
                child: ListView.builder(
                  itemCount: registerFields.length,
                  itemBuilder: (context, index) {
                    final registerfield = registerFields[index];
                    if (registerfield.label == SignupInStrings.passwordLabel) {
                      registerfield.suffix = IconButton(
                        onPressed: () {
                          setState(() {
                            registerfield.obscureText = !registerfield.obscureText;
                          });
                        },
                        icon: Icon(
                          registerfield.obscureText ? Icons.visibility_off : Icons.visibility,
                        ),
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: CustomTextField(
                        label: registerfield.label,
                        hint: registerfield.hint,
                        prefix: registerfield.prefix,
                        suffix: registerfield.suffix,
                        controller: registerfield.controller,
                        keyboard: registerfield.keyboard,
                        obscureText: registerfield.obscureText,
                        validator: registerfield.validator,
                      ),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Registering...')),
                    );
                  }
                },
                child: Text(SignupInStrings.signUpButtonText),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    SignupInStrings.logInToAccount,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      SignupInStrings.signINButtonText,
                      style: TextStyle(
                          color: Color(0xff6759FF),
                          fontSize: 18,
                          decoration: TextDecoration.underline),
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
