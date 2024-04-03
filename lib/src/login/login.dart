import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:plant_deseases_client/features/buttons/google_button.dart';
import 'package:plant_deseases_client/features/buttons/login_button.dart';
import 'package:plant_deseases_client/features/textfield/email_textfield.dart';
import 'package:plant_deseases_client/features/textfield/password_textfield.dart';
import 'package:plant_deseases_client/style/palette.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.height / 1.2,
            child: Lottie.asset("assets/lottie/login.json"),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          EmailTexField(
            controller: emailController,
          ),
          PasswordTextField(
            controller: passwordController,
          ),
          const LoginButton(),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Password Dimenticata? ',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              GestureDetector(
                child: Text(
                  'Resettela qui',
                  style: TextStyle(
                      fontSize: 10,
                      color: Palette.primary,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => context.go('/reset'),
              ),
            ],
          ),
          Divider(
            thickness: .3,
            color: Palette.primary,
          ),
          const Text('OR'),
          const SizedBox(
            height: 15,
          ),
          const GoogleButton()
        ],
      ),
    );
  }
}
