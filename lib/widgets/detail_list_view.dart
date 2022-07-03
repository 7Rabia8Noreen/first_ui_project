import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter/material.dart';

class DetailListView extends StatelessWidget {
  const DetailListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: REdgeInsets.all(8),
      height: 69.h,
      width: 69.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent, width: 0.0),
        borderRadius: BorderRadius.circular(8.r),
        color: Color(0xFF666666),
      ),
      child: Image.asset(
        'assets/images/illustration_listtile.jpg',
        fit: BoxFit.fill,
      ),
    );
  }
}
