import 'package:ecommerce/core/common_widgets/title_text.dart';
import 'package:ecommerce/core/config/app_constants.dart';
import 'package:ecommerce/core/controllers/home_controller.dart';
import 'package:ecommerce/core/utils/theme/custom_theme_data.dart';
import 'package:ecommerce/presentation/pages/home/home_screen.dart';
import 'package:ecommerce/presentation/pages/home/widgets/BottomNavigationBar/bottom_navigation_bar.dart';
import 'package:ecommerce/presentation/shopping_cart/shopping_cart_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends GetView<HomeController> {
  const MainPage({Key? key}) : super(key: key);

  Widget _appBar() {
    return Container(
      padding: CustomTheme.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RotatedBox(
            quarterTurns: 4,
            child: _icon(Icons.sort, color: Colors.black54),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            child: Container(
              decoration: BoxDecoration(
                color: Get.theme.backgroundColor,
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                      color: Color(0xfff8f8f8),
                      blurRadius: 10,
                      spreadRadius: 10),
                ],
              ),
              child: Image.asset("assets/user.png"),
            ),
          )
        ],
      ),
    );
  }

  Widget _icon(IconData icon, {Color color = AppColors.iconColor}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(13)),
          color: Get.theme.backgroundColor,
          boxShadow: CustomTheme.shadow),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }

  Widget _title() {
    return Container(
      margin: CustomTheme.padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CommonTitleText(
                text: controller.isHomePageSelected ? 'Our' : 'Shopping',
                fontSize: 27,
                fontWeight: FontWeight.w400,
              ),
              CommonTitleText(
                text: controller.isHomePageSelected ? 'Products' : 'Cart',
                fontSize: 27,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
          const Spacer(),
          !controller.isHomePageSelected
              ? Container(
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.delete_outline,
                    color: AppColors.orange,
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }

  void onBottomIconPressed(int index) {
    if (index == 0 || index == 1) {
      controller.isHomePageSelected = true;
    } else {
      controller.isHomePageSelected = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                height: Get.height - 50,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xfffbfbfb),
                      Color(0xfff7f7f7),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: GetX<HomeController>(
                  builder: (controller) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _appBar(),
                      _title(),
                      Expanded(
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          switchInCurve: Curves.easeInToLinear,
                          switchOutCurve: Curves.easeOutBack,
                          child: controller.isHomePageSelected
                              ? const HomeScreen()
                              : const Align(
                                  alignment: Alignment.topCenter,
                                  child: ShoppingCartPage(),
                                ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CustomBottomNavigationBar(
                onIconPressedCallback: onBottomIconPressed,
              ),
            )
          ],
        ),
      ),
    );
  }
}
