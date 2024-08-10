import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentcar/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function()? function;
  final Color? color;
  final TextStyle? textStyle;
  final double? radius;
  final double? width;
  const CustomButton({
    super.key,
    required this.function,
    required this.title,
    this.color,
    this.textStyle,
    this.radius,
    this.width,
  });
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 15),
      child: MaterialButton(
        minWidth: width ?? double.infinity,
        height: 50.h,
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: function,
        child: Text(
          title,
          style: textStyle,
        ),
      ),
    );
  }
}

class CustomBorderButton extends StatelessWidget {
  final String title;
  final Function()? function;
  final Color? color;
  final Color? borderColor;
  final TextStyle? textStyle;
  final double? radius;
  final double? width;
  const CustomBorderButton({
    super.key,
    required this.function,
    required this.title,
    this.color,
    this.borderColor,
    this.textStyle,
    this.radius,
    this.width,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 15),
        child: Container(
          width: width ?? double.infinity,
          height: 50.h,
          decoration: BoxDecoration(
              color: color,
              border: Border.all(color: borderColor ?? Colors.transparent),
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Text(
              title,
              style: textStyle ??
                  TextStyle(color: AppColors.primary, fontSize: 14.sp),
            ),
          ),
        ),
      ),
    );
  }
}
