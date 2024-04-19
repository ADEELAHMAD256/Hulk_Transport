import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/colors.dart';

class CustomPinPut extends StatelessWidget {
  final void Function(String)? onChanged;
  final bool isFilled;
  const CustomPinPut({
    super.key,
    required this.onChanged,
    required this.isFilled,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: isFilled ? AppColors.primaryColor : AppColors.greyColor,
            offset: const Offset(0, 4),
            blurRadius: 0,
            spreadRadius: -1,
          ),
        ],
      ),
      height: 56.h,
      width: 48.w,
      child: TextFormField(
        onChanged: onChanged,
        autofocus: true,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          hintText: "",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide.none,
          ),
          hintStyle: AppTextStyles.kthintTextStyle,
          filled: true,
          fillColor: AppColors.textFieldColor,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 15.w,
            vertical: 20.h,
          ),
        ),
      ),
    );
  }
}
