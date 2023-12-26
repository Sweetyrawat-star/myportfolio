import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../data/models/custom_service.dart';

class BasicServiceItem extends StatefulWidget {
  const BasicServiceItem({super.key, required this.service});

  final CustomService service;

  @override
  State<BasicServiceItem> createState() => _BasicServiceItemState();
}

class _BasicServiceItemState extends State<BasicServiceItem> {
  Color itemColor = AppColors.lowPriority;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: itemColor,
      child: MouseRegion(
        onEnter: _onEnter,
        onExit: _onExit,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [
                    Color(0xfFF2719B),
                    Color(0xffF37695),
                    Color(0xffF37D8F),
                    Color(0xffF48D79),
                    Color(0xffF59174)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: SvgPicture.asset(
                widget.service.logo,
                height: 48,
              ),
            ),
            //const SizedBox(height: 10),
            if (context.width > DeviceType.mobile.getMinWidth())
              Expanded(
                child: Text(
                  widget.service.service,
                  style: AppStyles.s24,
                  // minFontSize: 8,
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _onExit(event) {
    setState(() => itemColor = AppColors.lowPriority);
  }

  void _onEnter(event) {
    setState(() => itemColor = AppColors.lowPriority);
  }
}
