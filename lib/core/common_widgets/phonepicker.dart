import 'package:ecommerce/core/controllers/address_form_controller.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter/material.dart';

class CommonPhonePicker extends GetView<AddressFormController> {
  const CommonPhonePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      ignoreBlank: false,
      textAlignVertical: TextAlignVertical.bottom,
      inputDecoration: InputDecoration(
        isDense: true,
        contentPadding:
            const EdgeInsets.only(left: 12, right: 12, bottom: 14, top: 14),
        errorStyle: const TextStyle(fontSize: 10, height: 0.5),
        filled: true,
        fillColor: Colors.white,
        hintText: "Phone Number",
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Color(0xffd4d4d4),
            width: 1.0,
          ),
        ),
        border: InputBorder.none,
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Color(0xffd4d4d4),
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Color(0xff6597d1),
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.black45,
            width: 1.0,
          ),
        ),
      ),
      formatInput: false,
      keyboardType:
          const TextInputType.numberWithOptions(signed: true, decimal: true),
      inputBorder: const OutlineInputBorder(),
      onInputChanged: (PhoneNumber value) {
        controller.phoneController.text = value.phoneNumber!;
      },
    );
  }
}
