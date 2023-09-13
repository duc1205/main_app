import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_app/modules/main/main_page.dart';
import 'package:tap_debouncer/tap_debouncer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  OutlineInputBorder inputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.r),
      borderSide: BorderSide(color: Colors.black, width: 1.w),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Colors.amber.withOpacity(0.15),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 50.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 50.h),
                    child: Center(
                      child: Text(
                        'ClubBadminton',
                        style: GoogleFonts.libreBaskerville(
                          fontStyle: FontStyle.italic,
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Text(
                    'Login',
                    style: GoogleFonts.libreBaskerville(
                      fontStyle: FontStyle.italic,
                      fontSize: 36.sp,
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    'Số điện thoại',
                    style: GoogleFonts.libreBaskerville(
                      fontStyle: FontStyle.italic,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  SizedBox(
                    height: 50.h,
                    child: TextField(
                      // focusNode: viewModel.phoneNode,
                      scrollPadding: EdgeInsets.only(bottom: 120.h),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 13.h,
                        ),
                        isDense: true,
                        enabledBorder: inputBorder(),
                        focusedBorder: inputBorder(),
                      ),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.phone,
                      // controller: viewModel.phoneController,
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    'Mật khẩu',
                    style: GoogleFonts.libreBaskerville(
                      fontStyle: FontStyle.italic,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  SizedBox(
                    height: 50.h,
                    child: TextField(
                      // focusNode: viewModel.phoneNode,
                      scrollPadding: EdgeInsets.only(bottom: 120.h),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 13.h,
                        ),
                        isDense: true,
                        enabledBorder: inputBorder(),
                        focusedBorder: inputBorder(),
                      ),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.phone,

                      // controller: viewModel.phoneController,
                    ),
                  ),
                  SizedBox(height: 25.h),
                  TapDebouncer(
                    onTap: () async {
                      Get.to(() => const MainPage());
                    },
                    builder: (context, onTap) => TextButton(
                      onPressed: onTap,
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 15.h,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        backgroundColor: Colors.blueAccent,
                        minimumSize: Size(double.infinity, 50.h),
                      ),
                      child: Text(
                        "Đăng nhập",
                        style: GoogleFonts.libreBaskerville(
                          fontStyle: FontStyle.italic,
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Bạn chưa có tài khoản?',
                        style: GoogleFonts.libreBaskerville(
                          fontSize: 16.sp,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Đăng ký',
                          style: GoogleFonts.libreBaskerville(
                            color: Colors.red,
                            fontSize: 16.sp,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
