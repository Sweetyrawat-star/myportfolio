import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/utils/app_extensions.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_enums.dart';
import '../../../core/utils/app_styles.dart';
import '../../blocs/home_bloc/home_bloc.dart';

class CustomHeaderBtn extends StatelessWidget {
  const CustomHeaderBtn({super.key, required this.headerIndex});

  final int headerIndex;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.read<HomeBloc>().add(ChangeAppBarHeadersIndex(headerIndex));
      },
      style: TextButton.styleFrom(
        textStyle: AppStyles.s16,
        foregroundColor: _getHeaderColor(
          currentIndex: context.read<HomeBloc>().appBarHeaderIndex,
          headerIndex: headerIndex,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 26,
        ),
        child: Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                colors: [
                  Color(0xffF48B42),
                  Color(0xffF4834B),
                  Color(0xffF3735E),
                  Color(0xffF36E63)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: Text(
                AppBarHeaders.values[headerIndex].getString(),
                style: const TextStyle(
                  color: Colors.white, // Text color should be set to white
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getHeaderColor({required currentIndex, required int headerIndex}) {
    if (currentIndex == headerIndex) {
      return AppColors.primaryColor;
    } else {
      return AppColors.white;
    }
  }
}
