import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentcar/core/extension/navigation_extension.dart';
import 'package:rentcar/core/extension/text_theme_extension.dart';
import 'package:rentcar/core/routes/routes.dart';
import 'package:rentcar/core/utils/app_colors.dart';
import 'package:rentcar/core/widget/custom_button.dart';
import 'package:rentcar/core/widget/custom_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/welcome.png',
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: AppColors.primary,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.black,
                    AppColors.black.withOpacity(.8),
                    AppColors.black.withOpacity(.4),
                    AppColors.lightBlack,
                    AppColors.black.withOpacity(.8),
                  ],
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 10,
                end: MediaQuery.of(context).size.width * .1,
                start: MediaQuery.of(context).size.width * .1,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextField(
                      hintText: 'Email',
                      labelText: 'Enter Email',
                      prefixIcon:
                          const Icon(Icons.email, color: AppColors.white),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      onSaved: (value) {},
                      validator: (value) {
                        return null;
                      },
                      controller: TextEditingController(),
                    ),
                    SizedBox(height: 10.h),
                    CustomTextField(
                      hintText: 'Password',
                      labelText: 'Enter Password',
                      prefixIcon:
                          const Icon(Icons.lock, color: AppColors.white),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      password: true,
                      onSaved: (value) {},
                      validator: (value) {
                        return null;
                      },
                      controller: TextEditingController(),
                    ),
                    SizedBox(height: 10.h),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: InkWell(
                        onTap: () =>
                            context.navigateToPage(AppRoutes.forgetPassword),
                        child: Text(
                          'Forget Password?',
                          style: context.f16500?.copyWith(color: AppColors.red),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    CustomButton(
                        function: () =>
                            context.navigateToAndReplacement(AppRoutes.login),
                        color: AppColors.primary,
                        title: 'Sign In'),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(thickness: .8),
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.primary),
                          ),
                          child: const Text(
                            'OR',
                            style: TextStyle(color: AppColors.white),
                          ),
                        ),
                        const Expanded(
                          child: Divider(thickness: .8),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    CustomButton(
                        function: () =>
                            context.navigateToAndReplacement(AppRoutes.login),
                        color: AppColors.lightBlue,
                        title: 'Google'),
                    SizedBox(height: 10.h),
                    CustomButton(
                        function: () =>
                            context.navigateToAndReplacement(AppRoutes.login),
                        color: AppColors.blue,
                        title: 'Facebook'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
