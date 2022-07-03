import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DetailListTile extends StatelessWidget {
  const DetailListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.r,
          child: RPadding(
            padding: REdgeInsets.all(0.0),
            child: Image.asset('assets/images/illustration_listtile.jpg'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Lolani Palace',
              //complexTravel[index].name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
        subtitle: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/star_icon.svg'),
                    RPadding(
                      padding: REdgeInsets.only(left: 6.w),
                      child: Text(
                        '4.5',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFABB3BB),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            RPadding(
              padding: REdgeInsets.only(left: 15.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg/location_icon3.svg'),
                      RPadding(
                        padding: REdgeInsets.only(left: 6.w),
                        child: Text(
                          'Oahu Island',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFABB3BB),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        trailing: SvgPicture.asset('assets/svg/forward_icon.svg'),
      ),
    );
  }
}
