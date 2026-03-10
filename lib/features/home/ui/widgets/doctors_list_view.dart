import 'package:doctors_appointment/features/home/ui/widgets/doctor_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
    
        (context, index) => DoctorItem(),
        childCount: 10,
      ),
    );
  }
}

