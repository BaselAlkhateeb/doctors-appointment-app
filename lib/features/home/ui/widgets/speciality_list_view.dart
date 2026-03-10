
import 'package:doctors_appointment/features/home/ui/widgets/specialty_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatelessWidget {
  const SpecialityListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(start: (index==0)?0:24.w),
          child: SpecialityItem(),
        ),
      ),
    );
  }
}

