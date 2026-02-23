import 'package:doctors_appointment/core/helpers/extentions.dart';
import 'package:doctors_appointment/core/routing/routes_string.dart';
import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: "don't have account ? ",
              style: TextStyles.font12darkBlueRegular.copyWith(fontSize: 13),
            ),
            TextSpan(
              text: 'Sign Up ',
              style: TextStyles.font13BlueSemiBold,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushReplacementNamed(RoutesString.signupView);
                },
            ),
          ],
        ),
      ),
    );
  }
}
