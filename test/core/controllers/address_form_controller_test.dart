import 'package:ecommerce/core/controllers/address_form_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  final controller = AddressFormController();

  Get.testMode = true;

  test(
      'Test the state of the reactive variable "textEditingControllers" across all of its lifecycles',
      () {
    expect(controller.phoneController.text, "");
    expect(controller.emailController.text, "");
    expect(controller.lastNameController.text, "");
    expect(controller.firstNameController.text, "");
    expect(controller.cityController.text, "");
    expect(controller.stateController.text, "");

    Get.put(controller); // onInit was called

    /// Test your functions

    controller.phoneController.text = "Phone";
    controller.emailController.text = "Email";
    controller.firstNameController.text = "First";
    controller.lastNameController.text = "Last";
    controller.cityController.text = "City";
    controller.stateController.text = "State";

    expect(controller.phoneController.text, "Phone");
    expect(controller.emailController.text, "Email");
    expect(controller.firstNameController.text, "First");
    expect(controller.lastNameController.text, "Last");
    expect(controller.cityController.text, "City");
    expect(controller.stateController.text, "State");
  });
}
