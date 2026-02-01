import 'package:doctors_appointment/core/helpers/extentions.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(body: GestureDetector(
      onTap: (){
      //  Navigator.pushNamed(context, routeName)
      //context.pushNamed('routeName' , arguments: '');
      
      },
      child: Center(child: Text('OnboardingView'))));
  }
}
