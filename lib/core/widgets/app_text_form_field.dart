import 'package:doctors_appointment/core/theme/colors_maneger.dart';
import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.controller,
    required this.hintText , 

    this.isObscure , 
    this.validator , 
    this.suffixIcon , 
    this.contentPadding , 
    this.focucedBorder , 
    this.enabledBorder , 
    this.hintStyle , 
    this.textInputStyle , 
    this.backgroundColor
    
  });

  final TextEditingController controller;
  final bool? isObscure;
  final String? Function(String?)? validator ;
  final String hintText;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focucedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final TextStyle? textInputStyle;
  final Color? backgroundColor;



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: ColorsManeger.primaryColor,
      obscureText: isObscure?? false,
      validator:validator ??(value) {
        if(value?.isEmpty??true){
          return 'this field is required';
        }
        return null;
      },
      style:textInputStyle?? TextStyles.font14darkBlueMedium,
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        contentPadding:contentPadding?? EdgeInsets.symmetric(
          horizontal: 20.w , 
          vertical: 18.h
        ),
        fillColor:backgroundColor?? ColorsManeger.textFieldColor,
        hintText: hintText,
        hintStyle:hintStyle?? TextStyles.font14HintColorMedium,
        suffixIcon: suffixIcon,
        
       
        enabledBorder:enabledBorder?? OutlineInputBorder(
      
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: ColorsManeger.borderColor,
            width: 1.3,
          ),
          //gapPadding: 10,
        ),
        focusedBorder:focucedBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: ColorsManeger.primaryColor,
            width: 1.3,
          ),
         // gapPadding: 10,
        ),
      ),
    );
  }
}
