import 'package:ecommerce/core/common_widgets/title_text.dart';
import 'package:ecommerce/core/config/app_constants.dart';
import 'package:ecommerce/core/controllers/home_controller.dart';
import 'package:ecommerce/core/model/product.dart';
import 'package:ecommerce/core/utils/theme/custom_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/model/data.dart';

class ProductDetailPage extends GetView<HomeController> {
  const ProductDetailPage({Key? key, required this.product}) : super(key: key);
  final Product product;

  Widget _appBar() {
    return Container(
      padding: CustomTheme.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
            size: 15,
            padding: 12,
            isOutLine: true,
            onPressed: () {
              Get.back();
            },
          ),
          _icon(
            Icons.favorite,
            color: AppColors.red,
            size: 15,
            padding: 12,
            isOutLine: false,
          ),
        ],
      ),
    );
  }

  Widget _icon(
    IconData icon, {
    Color color = AppColors.iconColor,
    double size = 20,
    double padding = 10,
    bool isOutLine = false,
    Function? onPressed,
  }) {
    return Container(
      height: 40,
      width: 40,
      padding: EdgeInsets.all(padding),
      // margin: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        border: Border.all(
            color: AppColors.iconColor,
            style: isOutLine ? BorderStyle.solid : BorderStyle.none),
        borderRadius: const BorderRadius.all(Radius.circular(13)),
        color: isOutLine ? Colors.transparent : Get.theme.backgroundColor,
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Color(0xfff8f8f8),
              blurRadius: 5,
              spreadRadius: 10,
              offset: Offset(5, 5)),
        ],
      ),
      child: Icon(icon, color: color, size: size),
    );
  }

  Widget _productImage() {
    return SizedBox(
        height: 220,
        child: Image.asset(
          product.image,
          fit: BoxFit.fitHeight,
        ));
  }

  Widget _detailWidget() {
    return DraggableScrollableSheet(
      maxChildSize: .8,
      initialChildSize: .53,
      minChildSize: .53,
      builder: (context, scrollController) {
        return Container(
          padding: CustomTheme.padding.copyWith(bottom: 0),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Colors.white),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const SizedBox(height: 5),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: 50,
                    height: 5,
                    decoration: const BoxDecoration(
                        color: AppColors.iconColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: CommonTitleText(text: product.name, fontSize: 25),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const CommonTitleText(
                              text: "\$ ",
                              fontSize: 18,
                              color: AppColors.red,
                            ),
                            CommonTitleText(
                              text: product.price.ceil().toString(),
                              fontSize: 25,
                            ),
                          ],
                        ),
                        Row(
                          children: const <Widget>[
                            Icon(Icons.star,
                                color: AppColors.yellowColor, size: 17),
                            Icon(Icons.star,
                                color: AppColors.yellowColor, size: 17),
                            Icon(Icons.star,
                                color: AppColors.yellowColor, size: 17),
                            Icon(Icons.star,
                                color: AppColors.yellowColor, size: 17),
                            Icon(Icons.star_border, size: 17),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                _availableSize(),
                const SizedBox(
                  height: 20,
                ),
                _availableColor(),
                const SizedBox(
                  height: 20,
                ),
                _description(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _availableSize() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const CommonTitleText(
          text: "Available Size",
          fontSize: 14,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _sizeWidget("US 6"),
            _sizeWidget("US 7", isSelected: true),
            _sizeWidget("US 8"),
            _sizeWidget("US 9"),
          ],
        )
      ],
    );
  }

  Widget _sizeWidget(String text, {bool isSelected = false}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
            color: AppColors.iconColor,
            style: !isSelected ? BorderStyle.solid : BorderStyle.none),
        borderRadius: const BorderRadius.all(Radius.circular(13)),
        color: isSelected ? AppColors.orange : Get.theme.backgroundColor,
      ),
      child: CommonTitleText(
        text: text,
        fontSize: 16,
        color: isSelected ? AppColors.background : AppColors.titleTextColor,
      ),
    );
  }

  Widget _availableColor() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const CommonTitleText(
          text: "Available Colors",
          fontSize: 14,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _colorWidget(AppColors.yellowColor, isSelected: true),
            const SizedBox(
              width: 30,
            ),
            _colorWidget(AppColors.lightBlue),
            const SizedBox(
              width: 30,
            ),
            _colorWidget(AppColors.black),
            const SizedBox(
              width: 30,
            ),
            _colorWidget(AppColors.red),
            const SizedBox(
              width: 30,
            ),
            _colorWidget(AppColors.skyBlue),
          ],
        )
      ],
    );
  }

  Widget _colorWidget(Color color, {bool isSelected = false}) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: color.withAlpha(150),
      child: isSelected
          ? Icon(
              Icons.check_circle,
              color: color,
              size: 18,
            )
          : CircleAvatar(radius: 7, backgroundColor: color),
    );
  }

  Widget _description() {
    return Text(
      AppData.description,
      style: const TextStyle(height: 1.4, fontSize: 16, letterSpacing: 0.3),
    );
  }

  FloatingActionButton _flotingButton() {
    return FloatingActionButton(
      onPressed: () => controller.addToCheckoutList(product),
      backgroundColor: AppColors.orange,
      child: Icon(Icons.add_shopping_cart_outlined,
          color: Get.theme.floatingActionButtonTheme.backgroundColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _flotingButton(),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xfffbfbfb),
              Color(0xfff7f7f7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  _appBar(),
                  _productImage(),
                ],
              ),
              _detailWidget()
            ],
          ),
        ),
      ),
    );
  }
}
