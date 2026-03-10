import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class DoctorsSpecialitySeeAllRow extends StatelessWidget {
  const DoctorsSpecialitySeeAllRow({
    required this.text,
    super.key,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text ,style: TextStyles.font18DarkBlueSemiBold, ) , 
        TextButton(onPressed: (){}, child: Text('See All' , style: TextStyles.font12BlueRegular,))
      ],
    );
  }
}

