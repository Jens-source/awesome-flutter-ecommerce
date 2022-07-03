import 'package:ecommerce/core/controllers/address_form_controller.dart';
import 'package:ecommerce/core/controllers/home_controller.dart';
import 'package:get/get.dart';

class AddressFormBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddressFormController>(() => AddressFormController());
  }
}
