import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressFormController extends GetxController {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
}
