import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsive_design/controllers/login_con.dart';

class MyHomePage extends StatelessWidget {
  final loginCon = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.red)),
                child: TextField(
                  controller: loginCon.email.value,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "E-mail",
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.red)),
                child: TextField(
                  controller: loginCon.passw.value,
                  obscureText: loginCon.is_hidden.value,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Password",
                      suffix: InkWell(
                          onTap: () {
                            loginCon.is_hidden.value =
                                !loginCon.is_hidden.value;
                          },
                          child: Icon(loginCon.is_hidden.value
                              ? Icons.visibility
                              : Icons.visibility_off))),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 60.h,
                width: double.infinity.w,
                padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                child: ElevatedButton(
                  onPressed: (){
                    loginCon.validateFields(loginCon.email.value.text,loginCon.passw.value.text);
                  },
                  child: Text('Login'),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
