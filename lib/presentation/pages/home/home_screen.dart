import 'package:ecommerce/core/common_widgets/product_card.dart';
import 'package:ecommerce/core/common_widgets/product_icon.dart';
import 'package:ecommerce/core/config/app_constants.dart';
import 'package:ecommerce/core/controllers/home_controller.dart';
import 'package:ecommerce/core/model/data.dart';
import 'package:ecommerce/core/utils/theme/custom_theme_data.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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

  Widget _categoryWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: Get.width,
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: AppData.categoryList
            .map(
              (category) => CommonProductIcon(
            model: category
          ),
        )
            .toList().cast<Widget>(),
      ),
    );
  }

  Widget _productWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: Get.width,
      height: Get.width * .7,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 4 / 3,
            mainAxisSpacing: 30,
            crossAxisSpacing: 20),
        padding: const EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        children: AppData.productList
            .map(
              (product) => CommonProductCard(
            product: product,
            onSelected: (model) {
                for (var item in AppData.productList) {
                  item.isSelected = false;
                }
                model.isSelected = true;
            },
          ),
        )
            .toList().cast<Widget>(),
      ),
    );
  }

  Widget _search() {
    return Container(
      margin: CustomTheme.padding,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.lightGrey.withAlpha(100),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Products",
                    hintStyle: TextStyle(fontSize: 12),
                    contentPadding:
                    EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 5),
                    prefixIcon: Icon(Icons.search, color: Colors.black54)),
              ),
            ),
          ),
          const SizedBox(width: 20),
          _icon(Icons.filter_list, color: Colors.black54)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 210,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        dragStartBehavior: DragStartBehavior.down,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _search(),
            _categoryWidget(),
            _productWidget(),
          ],
        ),
      ),
    );
  }
}



