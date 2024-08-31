import 'package:ecommerce_flutter/utils/app_button.dart';
import 'package:ecommerce_flutter/utils/app_text_filed.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

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
                "Ops, Forget Your Password? No Problem, Enter Your Mail To Reset Your Password....!",
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
                height: 25,
              ),
              AppButtonWidget(
                title: 'Confirm Email',
                onClick: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
