import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxBool _isHomePageSelected = RxBool(true);

  final RxInt _selectedCategory = RxInt(0);

  int get selectedCategory => _selectedCategory.value;

  void setSelectedCategory(int cat) {
    _selectedCategory.value = cat;
    _selectedCategory.refresh();
  }

  bool get isHomePageSelected => _isHomePageSelected.value;

  set isHomePageSelected(bool value) {
    _isHomePageSelected.value = value;
    _isHomePageSelected.refresh();
  }
}
