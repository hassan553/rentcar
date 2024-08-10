import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentcar/core/extension/navigation_extension.dart';
import 'package:rentcar/core/routes/routes.dart';
import 'package:rentcar/core/widget/custom_button.dart';

import '../../../core/utils/app_colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

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
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: MediaQuery.of(context).size.height * .1,
              end: MediaQuery.of(context).size.width * .1,
              start: MediaQuery.of(context).size.width * .1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomButton(
                    function: () =>
                        context.navigateToPage(AppRoutes.login),
                  
                    color: AppColors.primary,
                    title: 'Sign In'),
                SizedBox(height: 20.h),
                CustomBorderButton(
                    function: () =>
                        context.navigateToPage(AppRoutes.register),
                    color: Colors.transparent,
                    borderColor: AppColors.primary,
                    title: 'Sign Up'),
                SizedBox(height: 16.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'by continuing you agree to terms of services and  Privacy policy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.lightBlue,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
