import 'package:ecommerce/core/common_widgets/title_text.dart';
import 'package:ecommerce/core/config/app_constants.dart';
import 'package:ecommerce/core/model/product.dart';
import 'package:flutter/material.dart';

class CommonProductCard extends StatelessWidget {
  final Product product;
  final ValueChanged<Product> onSelected;
  const CommonProductCard({Key? key, required this.product, required this.onSelected}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Color(0xfff8f8f8), blurRadius: 15, spreadRadius: 10),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: !product.isSelected ? 20 : 0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              child: IconButton(
                icon: Icon(
                  product.isliked ? Icons.favorite : Icons.favorite_border,
                  color:
                      product.isliked ? AppColors.red : AppColors.iconColor,
                ),
                onPressed: () {},
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(height: product.isSelected ? 15 : 0),
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: AppColors.orange.withAlpha(40),
                      ),
                      Image.asset(product.image)
                    ],
                  ),
                ),
                // SizedBox(height: 5),
                CommonTitleText(
                  text: product.name,
                  fontSize: product.isSelected ? 16 : 14,
                ),
                CommonTitleText(
                  text: product.category,
                  fontSize: product.isSelected ? 14 : 12,
                  color: AppColors.orange,
                ),
                CommonTitleText(
                  text: product.price.toString(),
                  fontSize: product.isSelected ? 18 : 16,
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
