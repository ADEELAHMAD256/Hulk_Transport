import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/colors.dart';

class CustomCheckBox extends StatefulWidget {
  final Color? kFillColor;
  const CustomCheckBox({
    super.key,
    this.kFillColor,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      if (widget.kFillColor != null && !isChecked) {
        return widget.kFillColor!;
      }
      return isChecked ? AppColors.primaryColor : Colors.transparent;
    }

    return Checkbox(
      visualDensity: VisualDensity.compact,
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.r),
      ),
      side: const BorderSide(
        color: AppColors.primaryColor,
      ),
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
          getColor;
        });
      },
    );
  }
}
