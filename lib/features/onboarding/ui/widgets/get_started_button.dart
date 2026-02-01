import 'package:doctors_appointment/core/theme/colors_maneger.dart';
import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsManeger.primaryColor , 
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16)
            )
            
          ),
          onPressed: () {},
          child: Text(
            'Get Started',
            style: TextStyles.font16WhiteSemiBold,
          ),
        ),
      ),
    );
  }
}
