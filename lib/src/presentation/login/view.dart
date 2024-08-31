import 'package:ecommerce_flutter/src/presentation/forget_password/view.dart';
import 'package:ecommerce_flutter/src/presentation/layout_pages/layout_view.dart';
import 'package:ecommerce_flutter/src/presentation/sign_up/view.dart';
import 'package:ecommerce_flutter/utils/app_button.dart';
import 'package:ecommerce_flutter/utils/app_text_filed.dart';
import 'package:ecommerce_flutter/utils/text_button_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello, Login To Check our new Offers ....!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const AppTextFiled(
                label: 'Email',
                hint: 'Enter Your E-Mail',
              ),
              const SizedBox(
                height: 20,
              ),
              const AppTextFiled(
                label: 'Password',
                hint: 'Enter Your Password',
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButtonWidget(
                  title: 'Forget Password?',
                  onClick: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgetPasswordView(),
                        ));
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              AppButtonWidget(
                title: 'Login',
                onClick: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LayoutView(),
                      ));
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).primaryColor,
                    ),
                    children: [
                      TextSpan(
                        text: ' Sign Up',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpView(),
                                ));
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
