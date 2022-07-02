import 'package:ecommerce/core/common_widgets/title_text.dart';
import 'package:ecommerce/core/config/app_constants.dart';
import 'package:ecommerce/core/controllers/home_controller.dart';
import 'package:ecommerce/core/model/category.dart';
import 'package:ecommerce/core/utils/theme/custom_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonProductIcon extends GetView<HomeController> {
  // final String imagePath;
  // final String text;

  final Category model;
  const CommonProductIcon({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return model.id == null
        ? Container(width: 5)
        : GetX<HomeController>(
            builder: (controller) => GestureDetector(
              onTap: () => controller.setSelectedCategory(model.id!),
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Container(
                    padding: CustomTheme.hPadding,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: controller.selectedCategory == model.id
                          ? AppColors.background
                          : Colors.transparent,
                      border: Border.all(
                        color: controller.selectedCategory == model.id
                            ? AppColors.orange
                            : AppColors.grey,
                        width: controller.selectedCategory == model.id ? 2 : 1,
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: controller.selectedCategory == model.id
                              ? const Color(0xfffbf2ef)
                              : Colors.white,
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        model.image != null
                            ? Image.asset(model.image!)
                            : const SizedBox(),
                        model.name == null
                            ? Container()
                            : CommonTitleText(
                                text: model.name!,
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              )
                      ],
                    ),
                  )),
            ),
          );
  }
}
