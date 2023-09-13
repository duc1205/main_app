import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ClubPage extends StatelessWidget {
  const ClubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.withOpacity(0.15),
      appBar: AppBar(
        title: Text(
          "Club".toUpperCase(),
          style: GoogleFonts.libreBaskerville(
            fontStyle: FontStyle.italic,
            fontSize: 24.sp,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.all(15.sp),
        child: FloatingActionButton(
          backgroundColor: Colors.green.withOpacity(0.875),
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 36,
          ),
        ),
      ),
    );
  }
}
