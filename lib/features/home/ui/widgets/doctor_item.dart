import 'package:doctors_appointment/core/helpers/spacing.dart';
import 'package:doctors_appointment/core/theme/colors_maneger.dart';
import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w, bottom: 24.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/doctor_text.png',
              width: 110,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),

          horizantalSpace(16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dr. Randy Wigham', style: TextStyles.font16DarkBlueBold),
                verticalSpace(12),
                RichText(
                  text: TextSpan(
                    style: TextStyles.font12GreyMedium,
                    children: [
                      TextSpan(text: 'General'),
                      TextSpan(text: '  |  '),
                      TextSpan(text: 'RSUD Gatot Subroto'),
                    ],
                  ),
                ),
                verticalSpace(12),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.email, color: ColorsManeger.grey),
                    horizantalSpace(10),
                    Expanded(
                      child: Text(
                        'baselalkhateeb@gmail.com',
                        style: TextStyles.font12GreyMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
