import 'package:doctors_appointment/core/helpers/spacing.dart';
import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:doctors_appointment/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.bottomRight,
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
              image: AssetImage('assets/images/blue_background_pattern.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Book and\nschedule with\nnearest doctor',
                style: TextStyles.font18WhiteMedium,
              ),
              verticalSpace(16.h),
              AppTextButton(
                buttonText: 'Find Nearby',
                textStyle: TextStyles.font12BlueRegular,
                onPressed: () {},
                buttonWidth: 109.w,

                backgroundColor: Colors.white,
                borderRadius: 48,
              ),
            ],
          ),
        ),
        Positioned(
          right: 10.w,

          child: Image.asset(
              'assets/images/female_doctor.png',
              fit: BoxFit.cover,
              height: 220.h,
              width: 136.w,
            ),
          
        ),
      ],
    );
  }
}
