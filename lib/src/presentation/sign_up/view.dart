import 'package:ecommerce_flutter/src/presentation/login/view.dart';
import 'package:ecommerce_flutter/utils/app_button.dart';
import 'package:ecommerce_flutter/utils/app_text_filed.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
                "Sign Up Now To Check our new Offers ....!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const AppTextFiled(
                label: 'Name',
                hint: 'Enter Your Full Name',
              ),
              const SizedBox(
                height: 20,
              ),
              const AppTextFiled(
                label: 'Your Phone',
                hint: 'Enter Your Phone',
              ),
              const SizedBox(
                height: 20,
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
                height: 20,
              ),
              const AppTextFiled(
                label: 'Confirm Password',
                hint: 'Enter Confirm Password',
              ),
              const SizedBox(
                height: 25,
              ),
              AppButtonWidget(
                title: 'Sign Up',
                onClick: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: RichText(
                  text: TextSpan(
                    text: "Have an account?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).primaryColor,
                    ),
                    children: [
                      TextSpan(
                        text: ' Login',
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
                                  builder: (context) => const LoginView(),
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
