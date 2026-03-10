import 'package:doctors_appointment/core/helpers/spacing.dart';
import 'package:doctors_appointment/core/theme/colors_maneger.dart';
import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityItem extends StatelessWidget {
  const SpecialityItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: ColorsManeger.verylightBlue,
          child: 
          
          Image.asset(
            'assets/images/brain.png',
            width: 30.w,
            height: 30.h,
          ),
        ),
        verticalSpace(8),
        Text(
          'Neurologic',
          style: TextStyles.font12darkBlueRegular,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
