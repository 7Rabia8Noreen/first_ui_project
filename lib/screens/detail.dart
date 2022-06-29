import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../components/c_elevated_button.dart';

class Detail extends StatefulWidget {
  Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              RPadding(
                padding: REdgeInsets.fromLTRB(32, 44, 24, 47),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset('assets/svg/back_icon.svg'),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset('assets/svg/share_icon.svg'),
                            SizedBox(
                              width: 32.w,
                            ),
                            SvgPicture.asset(
                                'assets/svg/favourite_detail_icon.svg'),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 375.w,
                height: 1340.h,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent, width: 1.0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.r),
                    topRight: Radius.circular(50.r),
                  ),
                  color: Color(0xFFF8F8F8),
                ),
                child: RPadding(
                  padding: REdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 16.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                            'assets/svg/background_scroll.svg'),
                      ),
                      SizedBox(
                        height: 31.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'The beauty of the ',
                                style: TextStyle(
                                  color: Color(0xFF092C4C),
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Nunito Sans',
                                ),
                              ),
                              Text(
                                'Beach in America',
                                style: TextStyle(
                                  color: Color(0xFF092C4C),
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Nunito Sans',
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset('assets/svg/vertical_line.svg'),
                          Column(
                            children: [
                              Text(
                                '\$327',
                                style: TextStyle(
                                  color: Color(0xFF092C4C),
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Nunito Sans',
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                'For 1 person',
                                style: TextStyle(
                                  color: Color(0xFFABB3BB),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Nunito Sans',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/star_detail_icon.svg',
                            height: 20.h,
                            width: 20.w,
                          ),
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
                        height: 32.h,
                      ),
                      Text(
                        'About Place',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF092C4C),
                          fontFamily: 'Nunito Sans',
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        'Hawaii is one of the favorite tourist destinations \n for travelers from around the world when it comes \n to the United States.',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFABB3BB),
                          fontFamily: 'Nunito Sans',
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          side: BorderSide(
                            color: Colors.transparent,
                            width: 0.sp,
                          ),
                        ),
                        child: RPadding(
                          padding: REdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 21.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/svg/clock_icon.svg'),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        'Length',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFABB3BB),
                                          fontFamily: 'Nunito Sans',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Text(
                                    '7 Days',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF092C4C),
                                      fontFamily: 'Nunito Sans',
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/svg/user_icon.svg'),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        'Limit',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFABB3BB),
                                          fontFamily: 'Nunito Sans',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Text(
                                    '10 People',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF092C4C),
                                      fontFamily: 'Nunito Sans',
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/svg/location_icon.svg'),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        'Location',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFABB3BB),
                                          fontFamily: 'Nunito Sans',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Text(
                                    'Osenia',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF092C4C),
                                      fontFamily: 'Nunito Sans',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Text(
                        'Spot Image',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF092C4C),
                          fontFamily: 'Nunito Sans',
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 69.h,
                            width: 69.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.transparent, width: 0.0),
                              borderRadius: BorderRadius.circular(8.r),
                              color: Color(0xFF666666),
                            ),
                            child: Image.asset(
                              'assets/images/illustration_listtile.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            height: 69.h,
                            width: 69.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.transparent, width: 0.0),
                              borderRadius: BorderRadius.circular(8.r),
                              color: Color(0xFF666666),
                            ),
                            child: Image.asset(
                              'assets/images/illustration_listtile.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            height: 69.h,
                            width: 69.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.transparent, width: 0.0),
                              borderRadius: BorderRadius.circular(8.r),
                              color: Color(0xFF666666),
                            ),
                            child: Image.asset(
                              'assets/images/illustration_listtile.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            height: 69.h,
                            width: 69.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.transparent, width: 0.0),
                              borderRadius: BorderRadius.circular(8.r),
                              color: Color(0xFF666666),
                            ),
                            child: Image.asset(
                              'assets/images/illustration_listtile.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Text(
                        'Location Map',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF092C4C),
                          fontFamily: 'Nunito Sans',
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Container(
                        height: 200.h,
                        width: 327.w,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.transparent, width: 0.0),
                          borderRadius: BorderRadius.circular(8.r),
                          color: Color(0xFFC4C4C4),
                        ),
                        child: RPadding(
                          padding: REdgeInsets.symmetric(
                              horizontal: 80.w, vertical: 40.h),
                          child: SvgPicture.asset('assets/svg/root.svg'),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Text(
                        'Trip in Place',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF092C4C),
                          fontFamily: 'Nunito Sans',
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Container(
                        height: 300.h,
                        child: /*complexTravel.isEmpty
                      ? Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          child: Column(
                            children: [
                              const Text('No Travel Detail Added Yet!'),
                              SizedBox(
                                height: 20.h,
                              ),
                              SizedBox(
                                height: 200.h,
                                width: 200.w,
                                child: Image.asset(
                                  'assets/images/nothing.png',
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ),
                        )
                      :*/
                            ListView.builder(
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 0,
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 30.r,
                                  child: RPadding(
                                    padding: REdgeInsets.all(0.0),
                                    child: Image.asset(
                                        'assets/images/illustration_listtile.jpg'),
                                  ),
                                ),
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Lolani Palace',
                                      //complexTravel[index].name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
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
                                            SvgPicture.asset(
                                                'assets/svg/star_icon.svg'),
                                            RPadding(
                                              padding:
                                                  REdgeInsets.only(left: 6.w),
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
                                              SvgPicture.asset(
                                                  'assets/svg/location_icon3.svg'),
                                              RPadding(
                                                padding:
                                                    REdgeInsets.only(left: 6.w),
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
                                trailing: SvgPicture.asset(
                                    'assets/svg/forward_icon.svg'),
                              ),
                            );
                          },
                          itemCount: 5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 120.h,
        width: 50.w,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: RPadding(
          padding: REdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
          child: ElevatedButton(
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF54480C),
                ),
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                //maximumSize: Size(double.infinity, 0.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),

                padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 8.h),
                primary: Color(0xFFFFCF57),
              )),
        ),

        /*BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Center(
                child: CElevatedButton(child: Text('Next'), onPressed: () {})),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/collection_icon.svg'),
            label: '',
          ),
        ],*
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
        onTap: (_) {},*/
      ),
    );
  }
}
