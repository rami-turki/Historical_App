import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/core/utils/app_font_style.dart';
import 'package:history_app/core/utils/app_strings.dart';

class LandingWidgetSingIn extends StatelessWidget {
  const LandingWidgetSingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            color: AppColors.lightBrown,
          ),
          Align(
              alignment: Alignment.center,
              child: Text(
                AppStrings.appName,
                style: AppFontStyle.saira700x32
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              )),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset('assets/svg/Vector.svg'),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SvgPicture.asset('assets/svg/Vector (1).svg'),
          ),
        ],
      ),
    );
  }
}
