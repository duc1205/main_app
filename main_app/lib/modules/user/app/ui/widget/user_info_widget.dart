import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInfoWidget extends StatelessWidget {
  final Image icon;
  final String title;
  final Widget value;

  const UserInfoWidget({Key? key, required this.title, required this.value, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 27.w),
      child: Row(
        children: [
          icon,
          SizedBox(width: 14.w),
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.libreBaskerville(
                fontStyle: FontStyle.italic,
                fontSize: 16.sp,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
          ),
          value,
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey,
            size: 12,
          ),
        ],
      ),
    );
  }
}
