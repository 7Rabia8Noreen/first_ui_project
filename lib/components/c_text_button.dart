import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CTextButton extends StatelessWidget {
  CTextButton({
    required this.child,
    required this.onPressed,
    this.focusNode,
    this.onFocusChange,
    this.onHover,
    this.onLongPress,
    this.key,
  }) : super(key: key);

  void Function() onPressed;
  final Widget child;
  final FocusNode? focusNode;
  final void Function(bool)? onFocusChange;
  final void Function(bool)? onHover;
  final void Function()? onLongPress;
  final Key? key;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: child,
      style: TextButton.styleFrom(
        primary: Color(0xFFF2613C),
        textStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        //padding: EdgeInsets.symmetric(horizontal: 90.w, vertical: 17.h),
      ),
      focusNode: focusNode,
      onFocusChange: onFocusChange,
      onHover: onHover,
      onLongPress: onLongPress,
      key: key,
    );
  }
}
