import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_app/core/extensions/string_ext.dart';

class PeopleItemWidget extends StatelessWidget {
  const PeopleItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 50.h,
          height: 50.h,
          decoration: BoxDecoration(
            border: Border.all(width: 1.w, color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            color: Colors.red,
          ),
          child: Center(
            child: Text(
              "Name".initials(),
              style: GoogleFonts.libreBaskerville(
                fontStyle: FontStyle.italic,
                fontSize: 24.sp,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(width: 5.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name",
              style: GoogleFonts.libreBaskerville(
                fontStyle: FontStyle.italic,
                fontSize: 20.sp,
                color: Colors.black,
              ),
            ),
            Text(
              "0987654321",
              style: GoogleFonts.libreBaskerville(
                fontStyle: FontStyle.italic,
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),
          ],
        )
      ],
    );
  }
}
