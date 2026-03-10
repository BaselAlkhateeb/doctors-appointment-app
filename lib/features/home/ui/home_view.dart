import 'package:doctors_appointment/core/helpers/extentions.dart';
import 'package:doctors_appointment/core/helpers/spacing.dart';
import 'package:doctors_appointment/core/theme/colors_maneger.dart';
import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:doctors_appointment/features/home/ui/widgets/doctor_item.dart';
import 'package:doctors_appointment/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:doctors_appointment/features/home/ui/widgets/doctors_list_view.dart';
import 'package:doctors_appointment/features/home/ui/widgets/doctors_speciality_see_all_row.dart';
import 'package:doctors_appointment/features/home/ui/widgets/home_top_bar.dart';
import 'package:doctors_appointment/features/home/ui/widgets/speciality_list_view.dart';
import 'package:doctors_appointment/features/home/ui/widgets/specialty_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            top: 20.h,
          ),
          child: CustomScrollView(
            slivers: [
              HomeTopBar().toSliver(),
              verticalSpace(40).toSliver(),
              DoctorsBlueContainer().toSliver(),
              verticalSpace(20).toSliver(),
              DoctorsSpecialitySeeAllRow(text: 'Doctor Speciality').toSliver(),
              verticalSpace(16).toSliver(),
              SpecialityListView().toSliver(),
              verticalSpace(16).toSliver(),
              DoctorsSpecialitySeeAllRow(
                text: 'Recommendation Doctor',
              ).toSliver(),
              verticalSpace(16).toSliver(),
              DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
