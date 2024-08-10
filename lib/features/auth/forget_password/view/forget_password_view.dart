import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentcar/core/extension/navigation_extension.dart';
import 'package:rentcar/core/extension/text_theme_extension.dart';
import 'package:rentcar/core/routes/routes.dart';
import 'package:rentcar/core/utils/app_colors.dart';
import 'package:rentcar/core/widget/custom_button.dart';
import 'package:rentcar/core/widget/custom_text_field.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

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
                    Text(
                        "Please enter your email address below to reset your password. We'll send you a link to create a new one.",
                        style: context.f18600!.copyWith(
                            color: AppColors.white,
                            fontStyle: FontStyle.italic)),
                    SizedBox(height: 50.h),
                    CustomTextField(
                      hintText: 'Email',
                      labelText: 'Enter Your Email',
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
                    SizedBox(height: 20.h),
                    CustomButton(
                        function: () =>
                            context.navigateToAndReplacement(AppRoutes.newPassword),
                        color: AppColors.primary,
                        title: 'Send'),
                    SizedBox(height: 40.h),
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
