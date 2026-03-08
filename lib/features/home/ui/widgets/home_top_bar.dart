import 'package:doctors_appointment/core/theme/colors_maneger.dart';
import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Basel!', style: TextStyles.font18DarkBlueBold),
            Text(
              'How Are you Today?',
              style: TextStyles.font11DarkGreyRegular,
            ),
          ],
        ),
            CircleAvatar(
              radius: 24,
              backgroundColor: ColorsManeger.lighterGrey,
              child: SvgPicture.asset('assets/svgs/notification_button.svg'),
            ),
          
      ],
    );
  }
}
