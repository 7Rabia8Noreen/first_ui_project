import 'package:flutter/material.dart';

import '../components/c_elevated_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),

          //set border radius more than 50% of height and width to make circle
        ),
        margin: REdgeInsets.all(10),
        child: Stack(
          children: [
            Positioned(
              // top: 0,
              child: Image.asset(
                'assets/images/illustration.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              child: RPadding(
                padding: REdgeInsets.all(8),
                child: Container(
                  height: 210.h,
                  width: 185.w,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: RPadding(
                      padding: REdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hawaii',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF092C4C)),
                              ),
                              Text(
                                '\$327',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF092C4C)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/svg/star_icon.svg'),
                              RPadding(
                                padding: REdgeInsets.only(left: 6.w),
                                child: Text(
                                  '4.5 ratings',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFABB3BB),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/svg/location_icon2.svg'),
                              RPadding(
                                padding: REdgeInsets.only(left: 6.w),
                                child: Text(
                                  'Osenia, America',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFABB3BB),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: CElevatedButton(
                              child: Text('More Detail'),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
