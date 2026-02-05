import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class DiscriptionText extends StatelessWidget {
  const DiscriptionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
        style: TextStyles.font13GreyRegular,
        textAlign: TextAlign.center,
      ),
    );
  }
}

