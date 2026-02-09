import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyles.font12LightGreyRegular.copyWith(fontSize: 13 , height: 1.5),
        children: [
          TextSpan(text: 'By logging, you agree to our '),
          TextSpan(
            text: 'Terms & Conditions ',
            style: TextStyles.font13darkBlueMedium,
          ),
          TextSpan(text: 'and ' , ),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyles.font13darkBlueMedium,
          ),
        ],
      ),
    );
  }
}
