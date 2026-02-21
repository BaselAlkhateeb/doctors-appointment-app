import 'package:doctors_appointment/core/helpers/spacing.dart';
import 'package:doctors_appointment/core/theme/colors_maneger.dart';
import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class RememberMeAndForgetPasswordRow extends StatelessWidget {
  RememberMeAndForgetPasswordRow({super.key});

  final ValueNotifier<bool> isCheckedNotifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ValueListenableBuilder<bool>(
              valueListenable: isCheckedNotifier,
              builder: (context, isChecked, child) {
                return Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    if (value != null) {
                      isCheckedNotifier.value = !isCheckedNotifier.value;
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
                );
              },
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
