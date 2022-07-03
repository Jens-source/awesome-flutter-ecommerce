import 'package:ecommerce/core/model/product.dart';
import 'package:ecommerce/presentation/shopping_cart/shopping_cart_page.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxBool _isHomePageSelected = RxBool(true);

  final RxInt _selectedCategory = RxInt(0);

  final RxList<Product> _checkoutList = RxList([]);

  int get selectedCategory => _selectedCategory.value;

  List<Product> get checkoutList => _checkoutList;

  void setSelectedCategory(int cat) {
    _selectedCategory.value = cat;
    _selectedCategory.refresh();
  }

  bool get isHomePageSelected => _isHomePageSelected.value;

  set isHomePageSelected(bool value) {
    _isHomePageSelected.value = value;
    _isHomePageSelected.refresh();
  }

  void addToCheckoutList(Product product) {
    _checkoutList.add(product);
    _checkoutList.refresh();
    Get.back();
    Get.to(const ShoppingCartPage());
  }
}
