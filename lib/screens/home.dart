import 'package:first_ui_project/components/c_elevated_button.dart';
import 'package:first_ui_project/components/c_text_form_field.dart';
import 'package:first_ui_project/components/complex_travel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multiline/multiline.dart';

import '../components/c_text_button.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ComplexTravel> complexTravel = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: RPadding(
          padding: REdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
          child: SafeArea(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/svg/menu_icon.svg'),
                    SvgPicture.asset('assets/svg/notification_icon.svg'),
                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  'Hi, Adam.',
                  style: TextStyle(
                    color: Color(0xFF092C4C),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Nunito Sans',
                  ),
                ),
                Text(
                  'Where would you\n like to go?',
                  style: TextStyle(
                    color: Color(0xFF092C4C),
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Nunito Sans',
                  ),
                  textDirection: TextDirection.ltr,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/location_icon.svg'),
                    RPadding(
                      padding: REdgeInsets.only(left: 12.w),
                      child: Text(
                        'Buenos Aires, Argentina',
                        style: TextStyle(
                          color: Color(0xFF092C4C),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Nunito Sans',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 287.w,
                      height: 64.h,
                      child: CTextFormField(
                        hintText: 'Try to find the eiffel tower',
                        prefixIcon: Padding(
                          padding: REdgeInsets.symmetric(
                              horizontal: 24.w, vertical: 24.h),
                          child: SvgPicture.asset('assets/svg/search_icon.svg'),
                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/svg/filter_icon.svg'),
                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Destination',
                      style: TextStyle(
                        color: Color(0xFF092C4C),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Nunito Sans',
                      ),
                    ),
                    CTextButton(
                      onPressed: () {},
                      child: Text('Show all'),
                    )
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),

                            //set border radius more than 50% of height and width to make circle
                          ),
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
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 230.h,
                                    width: 205.w,
                                    child: Card(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Padding(
                                        padding: REdgeInsets.fromLTRB(
                                            20, 16, 12, 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Hawaii',
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color(0xFF092C4C)),
                                                ),
                                                Text(
                                                  '\$327',
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color(0xFF092C4C)),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.h,
                                            ),
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                    'assets/svg/star_icon.svg'),
                                                RPadding(
                                                  padding: REdgeInsets.only(
                                                      left: 6.w),
                                                  child: Text(
                                                    '4.5 ratings',
                                                    style: TextStyle(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                                SvgPicture.asset(
                                                    'assets/svg/location_icon2.svg'),
                                                RPadding(
                                                  padding: REdgeInsets.only(
                                                      left: 6.w),
                                                  child: Text(
                                                    'Osenia, America',
                                                    style: TextStyle(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xFFABB3BB),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16.h,
                                            ),
                                            CElevatedButton(
                                              child: Text('More Detail'),
                                              onPressed: () {},
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
                      ),
                      Container(
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),

                            //set border radius more than 50% of height and width to make circle
                          ),
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
                                  padding: REdgeInsets.all(8.0),
                                  child: Container(
                                    height: 230.h,
                                    width: 205.w,
                                    child: Card(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Padding(
                                        padding: REdgeInsets.fromLTRB(
                                            20, 16, 12, 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Hawaii',
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color(0xFF092C4C)),
                                                ),
                                                Text(
                                                  '\$327',
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color(0xFF092C4C)),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.h,
                                            ),
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                    'assets/svg/star_icon.svg'),
                                                RPadding(
                                                  padding: REdgeInsets.only(
                                                      left: 6.w),
                                                  child: Text(
                                                    '4.5 ratings',
                                                    style: TextStyle(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                                SvgPicture.asset(
                                                    'assets/svg/location_icon2.svg'),
                                                RPadding(
                                                  padding: REdgeInsets.only(
                                                      left: 6.w),
                                                  child: Text(
                                                    'Osenia, America',
                                                    style: TextStyle(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xFFABB3BB),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16.h,
                                            ),
                                            CElevatedButton(
                                              child: Text('More Detail'),
                                              onPressed: () {},
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
                      ),
                      Container(
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),

                            //set border radius more than 50% of height and width to make circle
                          ),
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
                                  padding: REdgeInsets.all(8.0),
                                  child: Container(
                                    height: 230.h,
                                    width: 205.w,
                                    child: Card(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Padding(
                                        padding: REdgeInsets.fromLTRB(
                                            20, 16, 12, 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Hawaii',
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color(0xFF092C4C)),
                                                ),
                                                Text(
                                                  '\$327',
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color(0xFF092C4C)),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.h,
                                            ),
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                    'assets/svg/star_icon.svg'),
                                                RPadding(
                                                  padding: REdgeInsets.only(
                                                      left: 6.w),
                                                  child: Text(
                                                    '4.5 ratings',
                                                    style: TextStyle(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                                SvgPicture.asset(
                                                    'assets/svg/location_icon2.svg'),
                                                RPadding(
                                                  padding: REdgeInsets.only(
                                                      left: 6.w),
                                                  child: Text(
                                                    'Osenia, America',
                                                    style: TextStyle(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xFFABB3BB),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16.h,
                                            ),
                                            CElevatedButton(
                                              child: Text('More Detail'),
                                              onPressed: () {},
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
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended',
                      style: TextStyle(
                        color: Color(0xFF092C4C),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Nunito Sans',
                      ),
                    ),
                    CTextButton(
                      onPressed: () {},
                      child: Text('Show all'),
                    )
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  height: 380.h,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Mount Bromo',
                                //complexTravel[index].name,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              Text(
                                '\$219',
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
                                      SvgPicture.asset(
                                          'assets/svg/star_icon.svg'),
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
                                        SvgPicture.asset(
                                            'assets/svg/location_icon3.svg'),
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
                                  ],
                                ),
                              )
                            ],
                          ),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: RPadding(
              padding: REdgeInsets.only(
                left: 24.w,
              ),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(Icons.home_outlined),
                    RPadding(
                      padding: REdgeInsets.only(left: 5.w),
                      child: const Text('Home'),
                    ),
                  ],
                ),
                style: TextButton.styleFrom(
                  // maximumSize: Size(100, 40),
                  // minimumSize: Size(100, 20),
                  primary: Color(0xFFF2613C),
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.r),
                    //side: BorderSide(color: Color(Colors.transparent))
                  ),
                  backgroundColor: Color(0xFFfdece7),
                  // padding:
                  //EdgeInsets.symmetric(horizontal: 17.w, vertical: 9.h),
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box, color: Color(0xFFC8C8C8)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline, color: Color(0xFFC8C8C8)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined, color: Color(0xFFC8C8C8)),
            label: '',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
        onTap: (_) {},
      ),
    );
  }
}
