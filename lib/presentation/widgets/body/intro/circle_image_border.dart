import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../data/models/responsive_size.dart';

class CircleImageBorder extends StatelessWidget {
  const CircleImageBorder({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      mobileSize: context.width * .62,
      ipadSize: context.width * .4,
      smallScreenSize: context.width * .29,
    );
    return Container(
      width: responsiveSize.getSize(),
      height: responsiveSize.getSize(),
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xfff2719b),
          Color(0xffF37695),
          Color(0xffF37D8F),
          Color(0xffF48D79),
          Color(0xffF59174)
        ]),
        //  color: AppColors.primaryColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
