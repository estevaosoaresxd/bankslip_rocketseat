import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_controller.dart';
import 'package:payflow/modules/my_bankslip/my_bankslip_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();
  final pages = [
    MyBankslipPage(),
    Container(
      color: Colors.blue,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(152),
          child: Container(
            height: 152,
            color: AppColors.primary,
            child: Center(
              child: ListTile(
                title: Text.rich(
                  TextSpan(
                      text: "Olá, ",
                      style: TextStyles.titleRegular,
                      children: [
                        TextSpan(
                          text: "Gabu",
                          style: TextStyles.titleBoldBackground,
                        )
                      ]),
                ),
                subtitle: Text(
                  "Mantenha suas contas em dia",
                  style: TextStyles.captionShape,
                ),
                trailing: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
          )),
      body: pages[homeController.currentPage],
      bottomNavigationBar: Container(
        height: 90,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          IconButton(
              onPressed: (() {
                setState(() {
                  homeController.setPage(0);
                });
              }),
              icon: Icon(
                Icons.home,
                color: AppColors.primary,
              )),
          GestureDetector(
            onTap: () {
              // Navigator.pushNamed(context, "/barcode_scanner");
              Navigator.pushNamed(context, "/insert_boleto");
            },
            child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(5)),
                child: IconButton(
                    onPressed: (() {
                      // Navigator.pushNamed(context, "/barcode_scanner");
                      Navigator.pushNamed(context, "/insert_boleto");
                    }),
                    icon: Icon(
                      Icons.add_box_outlined,
                      color: AppColors.background,
                    ))),
          ),
          IconButton(
              onPressed: (() {
                setState(() {
                  homeController.setPage(1);
                });
              }),
              icon: Icon(
                Icons.description_outlined,
                color: AppColors.body,
              ))
        ]),
      ),
    );
  }
}
