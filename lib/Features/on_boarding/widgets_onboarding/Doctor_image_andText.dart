import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_doctors/Core/Theming/Coloring.dart';

class DoctorImage extends StatelessWidget {
  const DoctorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svg_pics/Opacity.svg'),
        Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.white,
              Colors.white.withOpacity(0.0),
            ], stops: const [
              0.14,
              0.4
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            child: Image.asset('assets/images/Image.png')),
        const Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor \n Appointment App',
            style: TextStyle(
                color: ColorsManager.mainBlue,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                height: 1.3),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
