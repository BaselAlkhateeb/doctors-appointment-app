import 'package:doctors_appointment/core/helpers/spacing.dart';
import 'package:doctors_appointment/core/theme/colors_maneger.dart';
import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:doctors_appointment/core/widgets/app_text_button.dart';
import 'package:doctors_appointment/core/widgets/app_text_form_field.dart';
import 'package:doctors_appointment/features/login/ui/widgets/have_an_account_text.dart';
import 'package:doctors_appointment/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> myKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isObscure = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              right: 30.w,
              left: 30.w,
              top: 60.h,
              bottom: 30.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BlueBold),
                verticalSpace(10),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GreyRegular,
                ),
                verticalSpace(36),
                Form(
                  key: myKey,
                  child: Column(
                    children: [
                      AppTextFormField(
                        controller: emailController,
                        hintText: 'Email',
                      ),
                      verticalSpace(18),
                      AppTextFormField(
                        controller: passwordController,
                        hintText: 'Password',
                        isObscure: isObscure,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                          icon: Icon(
                            isObscure
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                          ),
                        ),
                      ),
                      verticalSpace(24),
                      buildRowForRemrmberMeAndForgotPassword(),

                      verticalSpace(42),
                      AppTextButton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {},
                      ),
                      verticalSpace(16),
                      TermsAndConditionsText(),
                      verticalSpace(60),
                      AlreadyHaveAnAccountText()
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

  Row buildRowForRemrmberMeAndForgotPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    isChecked = value;
                  });
                }
              },

              // checkColor: ,
              side: BorderSide(
                color: ColorsManeger.checkboxBorderColor,
                width: 2,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(4),
              ),
              fillColor: WidgetStatePropertyAll(
                isChecked ? ColorsManeger.primaryColor : Colors.white,
              ),
            ),
            horizantalSpace(10),
            Text('Remember me', style: TextStyles.font12LightGreyRegular),
          ],
        ),

        GestureDetector(
          onTap: () {},
          child: Text('Forgot Password?', style: TextStyles.font12BlueRegular),
        ),
      ],
    );
  }
}

