import 'package:ecommerce/core/common_widgets/title_text.dart';
import 'package:ecommerce/core/config/app_constants.dart';
import 'package:ecommerce/core/model/data.dart';
import 'package:ecommerce/core/model/product.dart';
import 'package:ecommerce/core/utils/theme/custom_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  Widget _cartItems() {
    return Column(children: AppData.cartList.map((x) => _item(x)).toList());
  }

  Widget _item(Product model) {
    return SizedBox(
      height: 80,
      child: Row(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.2,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    height: 70,
                    width: 70,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.lightGrey,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: -20,
                  bottom: -20,
                  child: Image.asset(model.image),
                )
              ],
            ),
          ),
          Expanded(
              child: ListTile(
                  title: CommonTitleText(
                    text: model.name,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      const CommonTitleText(
                        text: '\$ ',
                        color: AppColors.red,
                        fontSize: 12,
                      ),
                      CommonTitleText(
                        text: model.price.toString(),
                        fontSize: 14,
                      ),
                    ],
                  ),
                  trailing: Container(
                    width: 35,
                    height: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.lightGrey.withAlpha(150),
                        borderRadius: BorderRadius.circular(10)),
                    child: CommonTitleText(
                      text: 'x${model.id}',
                      fontSize: 12,
                    ),
                  )))
        ],
      ),
    );
  }

  Widget _price() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CommonTitleText(
          text: '${AppData.cartList.length} Items',
          color: AppColors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        CommonTitleText(
          text: '\$${getPrice()}',
          fontSize: 18,
        ),
      ],
    );
  }

  Widget _submitButton(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.orange),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 4),
        width: Get.width * .75,
        child: const CommonTitleText(
          text: 'Next',
          color: AppColors.background,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  double getPrice() {
    double price = 0;
    for (var x in AppData.cartList) {
      price += x.price * x.id;
    }
    return price;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CustomTheme.padding,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _cartItems(),
            const Divider(
              thickness: 1,
              height: 70,
            ),
            _price(),
            const SizedBox(height: 30),
            _submitButton(context),
          ],
        ),
      ),
    );
  }
}
