import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_app/gen/assets.gen.dart';
import 'package:main_app/injector.dart';
import 'package:main_app/modules/boarding/app/ui/splash/splash_page_view_model.dart';
import 'package:suga_core/suga_core.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends BaseViewState<SplashPage, SplashPageViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.withOpacity(0.15),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ClubBadminton',
            style: GoogleFonts.libreBaskerville(
              fontStyle: FontStyle.italic,
              fontSize: 48.h,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            'Nơi viết tiếp những đam mê',
            style: GoogleFonts.dancingScript(
              fontStyle: FontStyle.italic,
              fontSize: 24.h,
            ),
          ),
          SizedBox(height: 25.h),
          Padding(
            padding: EdgeInsets.all(15.sp),
            child: Assets.resources.images.image.image(),
          ),
        ],
      ),
    );
  }

  @override
  SplashPageViewModel createViewModel() => injector<SplashPageViewModel>();
}
