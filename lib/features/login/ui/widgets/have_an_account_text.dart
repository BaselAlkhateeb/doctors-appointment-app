import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountText extends StatelessWidget {
  const AlreadyHaveAnAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
      children: [
        TextSpan(text: 'Already have an account yet? ' , style: TextStyles.font12darkBlueRegular.copyWith(fontSize: 13) ) , 
        TextSpan(text: 'Sign Up ' , style: TextStyles.font13BlueSemiBold ,  ) , 
    
      ]
    ));
  }
}

