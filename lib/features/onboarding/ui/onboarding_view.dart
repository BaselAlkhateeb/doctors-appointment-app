import 'package:doctors_appointment/core/theme/colors_maneger.dart';
import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:doctors_appointment/features/onboarding/ui/widgets/descripition_text.dart';
import 'package:doctors_appointment/features/onboarding/ui/widgets/doctoe_image_and_text.dart';
import 'package:doctors_appointment/features/onboarding/ui/widgets/get_started_button.dart';
import 'package:doctors_appointment/features/onboarding/ui/widgets/logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: Column(
              children: [
                LogoAndName(),
                SizedBox(height: 30.h),
                DoctorImageAndText(),
                DiscriptionText(),
                GetStartedButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

