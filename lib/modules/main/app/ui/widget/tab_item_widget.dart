import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabItemWidget extends StatelessWidget {
  final String name;
  final Icon icon;
  final Icon selectedIcon;
  final bool isSelected;

  const TabItemWidget({
    Key? key,
    required this.isSelected,
    required this.icon,
    required this.selectedIcon,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: icon,
      child: Text(
        name,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
        maxLines: 1,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
