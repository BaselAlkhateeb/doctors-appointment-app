import 'package:doctors_appointment/core/helpers/spacing.dart';
import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:doctors_appointment/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:doctors_appointment/features/sign_up/ui/widgets/already_have_account_text.dart';
import 'package:doctors_appointment/features/sign_up/ui/widgets/TextFormFields/email_text_form_field.dart';
import 'package:doctors_appointment/features/sign_up/ui/widgets/TextFormFields/name_text_form_field.dart';
import 'package:doctors_appointment/features/sign_up/ui/widgets/TextFormFields/password_confirmation_text_form_field.dart';
import 'package:doctors_appointment/features/sign_up/ui/widgets/TextFormFields/password_text_form_field.dart';
import 'package:doctors_appointment/features/sign_up/ui/widgets/password_validations_section.dart';
import 'package:doctors_appointment/features/sign_up/ui/widgets/TextFormFields/phone_text_form_field.dart';
import 'package:doctors_appointment/features/sign_up/ui/widgets/SignUpButton/sign_up_button_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create Account', style: TextStyles.font24BlueBold),
                verticalSpace(10),
                //---------------------------------------------------------------------
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: TextStyles.font14GreyRegular,
                ),
                verticalSpace(24),

                //---------------------------------------------------------------------
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      NameTextFormField(),
                      verticalSpace(10),
                      PhoneTextFormField(),
                      verticalSpace(10),
                      SignUpEmailTextFormField(),
                      verticalSpace(10),
                      SignUpPasswordTextFormField(),
                      verticalSpace(10),
                      PasswordConfirmationTextFormField(),
                      verticalSpace(24),
                      SignUpPasswordValidationsSection(),
                      verticalSpace(24),
                      SignUpButtonSection(),
                      verticalSpace(24),
                      TermsAndConditionsText(),
                      verticalSpace(24),
                      AlreadyHaveAnAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
