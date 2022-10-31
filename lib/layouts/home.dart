import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 24.h),
          child: Column(
            children: [
              Text('Dummy Text Goes Here',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}
