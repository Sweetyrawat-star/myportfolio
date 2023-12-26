import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.height,
    required this.label,
    this.icon,
    this.iconColor,
    this.labelColor,
    this.backgroundColor,
    this.borderColor,
    this.onPressed,
    this.width,
  });

  final Function()? onPressed;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? iconColor;
  final Color? labelColor;
  final double? height;
  final IconData? icon;
  final String label;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 48,
      width: width,
      child: GestureDetector(
        onTap: onPressed,
       /* style: ElevatedButton.styleFrom(
          side:
          backgroundColor: backgroundColor,
        ),*/
        child: Container(

          decoration: BoxDecoration(
            gradient: borderColor == null?LinearGradient(
              colors: [
                Color(0xffF48B42),
                Color(0xffF4834B),
                Color(0xffF3735E),
                Color(0xffF36E63)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ):null,
            borderRadius: BorderRadius.circular(15),
            border: borderColor == null ? null : Border.all(color: borderColor!),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: AutoSizeText(
                  label,
                  style: borderColor == null?AppStyles.s16Wi:AppStyles.s16,
                  textAlign: TextAlign.center,
                  minFontSize: 8,
                  maxLines: 1,
                ),
              ),
              if (icon != null) ...[
                const SizedBox(width: 5),
                Icon(
                  icon,
                  size: 18,
                  color: iconColor,
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
