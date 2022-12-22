import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list_widget.dart';

import '../../shared/themes/app_colors.dart';

class MyBankslipPage extends StatefulWidget {
  const MyBankslipPage({Key? key}) : super(key: key);

  @override
  State<MyBankslipPage> createState() => _MyBankslipPageState();
}

class _MyBankslipPageState extends State<MyBankslipPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Meus Boletos",
                style: TextStyles.titleBoldHeading,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Divider(
            thickness: 1,
            height: 1,
            color: AppColors.stroke,
          ),
        ),
        BoletoListWidget()
      ],
    );
  }
}
