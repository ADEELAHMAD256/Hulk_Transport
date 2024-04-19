import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';

class OAuthCustomButton extends StatelessWidget {
  final String icPath;
  const OAuthCustomButton({
    super.key,
    required this.icPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: const Color(0xFFE5E5E5),
        ),
      ),
      height: 50,
      width: 70,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
        child: CustomImageView(
          imagePath: icPath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
