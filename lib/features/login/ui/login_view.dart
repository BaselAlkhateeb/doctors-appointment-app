import 'package:doctors_appointment/core/helpers/spacing.dart';
import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:doctors_appointment/features/login/ui/widgets/login_button_section.dart';
import 'package:doctors_appointment/features/login/ui/widgets/email_text_form_field.dart';
import 'package:doctors_appointment/features/login/ui/widgets/have_an_account_text.dart';
import 'package:doctors_appointment/features/login/ui/widgets/password_text_form_field.dart';
import 'package:doctors_appointment/features/login/ui/widgets/password_validation_section.dart';
import 'package:doctors_appointment/features/login/ui/widgets/remember_me_and_forget_password.dart';
import 'package:doctors_appointment/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.w, horizontal: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BlueBold),
                verticalSpace(10),
                //---------------------------------------------------------------------
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GreyRegular,
                ),
                verticalSpace(36),

                //---------------------------------------------------------------------
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      EmailTextFormField(),
                      verticalSpace(18),
                      PasswordTextFormField(),
                      verticalSpace(24),
                      PasswordValidationSection(),
                      verticalSpace(24),
                      LoginButtonSection(),
                    ],
                  ),
                ),
                //EmailAndPasswordAndLoginButton(),
                verticalSpace(24),

                //---------------------------------------------------------------------
                RememberMeAndForgetPasswordRow(),
                verticalSpace(20),

                //---------------------------------------------------------------------
                TermsAndConditionsText(),
                verticalSpace(20),

                //---------------------------------------------------------------------
                AlreadyHaveAnAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

