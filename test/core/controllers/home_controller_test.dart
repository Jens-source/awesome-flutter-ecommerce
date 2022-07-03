import 'package:ecommerce/core/controllers/home_controller.dart';
import 'package:ecommerce/core/model/product.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  final controller = HomeController();
  Get.testMode = true;

  test(
      'Test the state of the reactive variable "checkoutList" across all of its lifecycles',
      () {
    print("EROFNOREIFN ${controller.checkoutList.length}");
    expect(controller.checkoutList.length, 0);
    expect(controller.isHomePageSelected, true);
    Get.put(controller); // onInit was called

    /// Test your functions
    controller.addToCheckoutList(Product(
        id: 0,
        name: "product",
        category: "category",
        price: 100,
        image: "assets/image"));
    expect(controller.checkoutList.length, 1);
    expect(controller.checkoutList[0].name, "product");
    expect(controller.checkoutList[0].id, 0);
    expect(controller.checkoutList[0].category, "category");

    //
    // /// onClose was called
    // Get.delete<HomeController>();
    //
    // expect(controller.checkoutList.length, 0);
  });

  test(
      'Test the state of the reactive variable "selectedCategory" across all of its lifecycles',
      () {
    expect(controller.selectedCategory, 0);
    Get.put(controller); // onInit was called
  });

  test(
      'Test the state of the reactive variable "isHomePageSelected" across all of its lifecycles',
      () {
    expect(controller.isHomePageSelected, true);
    Get.put(controller); // onInit was called
  });

  test(
      'Test the state of the reactive variable "isHomePageSelected" across all of its lifecycles',
      () {
    expect(controller.isHomePageSelected, true);
    Get.put(controller); // onInit was called
  });
}
