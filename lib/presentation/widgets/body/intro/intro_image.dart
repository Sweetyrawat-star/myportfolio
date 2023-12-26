import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../data/models/responsive_size.dart';

class IntroImage extends StatelessWidget {
  const IntroImage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      mobileSize: context.width * .55,
      ipadSize: context.width * .36,
      smallScreenSize: context.width * .26,
    );

    return Positioned(
      // alignment: Alignment.topRight,
    //  top: 0,
      right: 5,
      left: 5,
      child:  Container(
          width: responsiveSize.getSize(),
          height: responsiveSize.getSize(),
          decoration: const BoxDecoration(
            image: DecorationImage(image:  AssetImage(
              AppAssets.devImage,
            /*  width: responsiveSize.getSize(),
              height: responsiveSize.getSize(),*/
            ),fit: BoxFit.fill),
            shape: BoxShape.circle,
          ),
        )
    /*  child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        clipBehavior: Clip.antiAliasWithSaveLayer ,
        child: Image.asset(
          AppAssets.devImage,
          width: responsiveSize.getSize(),
          height: responsiveSize.getSize(),
        ),
      ),*/
    );
  }
}
