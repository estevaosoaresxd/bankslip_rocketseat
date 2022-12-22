import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onClick;
  const SocialLoginButton({Key? key, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: AppColors.shape,
            border: Border.fromBorderSide(BorderSide(color: AppColors.stroke)),
            borderRadius: BorderRadius.circular(5)),
        child: Row(children: [
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Image.asset(AppImages.google),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    height: 56,
                    width: 1,
                    color: AppColors.stroke,
                  )
                ],
              )),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Entra com Google",
                  style: TextStyles.buttonGray,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
