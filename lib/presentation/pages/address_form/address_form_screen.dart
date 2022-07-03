import 'package:country_picker/country_picker.dart';
import 'package:ecommerce/core/common_widgets/common_text_field.dart';
import 'package:ecommerce/core/common_widgets/phonepicker.dart';
import 'package:ecommerce/core/controllers/address_form_controller.dart';
import 'package:ecommerce/core/utils/theme/custom_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class AddressFormScreen extends GetView<AddressFormController> {
  const AddressFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
              color: Colors.white,
              height: 80,
              width: Get.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Positioned(
                      bottom: 15,
                      child: Text(
                        "Delivery Address",
                        style: TextStyle(fontSize: 20),
                      )),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                      onPressed: () => Get.back(),
                    ),
                  )
                ],
              )),
          Container(
            margin: const EdgeInsets.only(top: 60),
            padding: CustomTheme.padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                30.heightBox,
                const Text(
                  "Contact detail",
                  style: TextStyle(color: Colors.black45),
                ),
                10.heightBox,
                CommonTextField(
                  textController: controller.firstNameController,
                  hintText: "First name",
                  iconData: Icons.person,
                ),
                CommonTextField(
                  textController: controller.lastNameController,
                  hintText: "Last name",
                  iconData: Icons.person,
                ),
                CommonTextField(
                  textController: controller.emailController,
                  hintText: "Last name",
                  iconData: Icons.person,
                ),
                const CommonPhonePicker(),
                30.heightBox,
                const Text(
                  "Address detail",
                  style: TextStyle(color: Colors.black45),
                ),
                10.heightBox,
                GestureDetector(
                  onTap: () {
                    showCountryPicker(
                      context: context,
                      countryListTheme: CountryListThemeData(
                        flagSize: 25,
                        backgroundColor: Colors.white,
                        textStyle: const TextStyle(
                            fontSize: 16, color: Colors.blueGrey),
                        bottomSheetHeight:
                            500, // Optional. Country list modal height
                        //Optional. Sets the border radius for the bottomsheet.
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        //Optional. Styles the search field.
                        inputDecoration: InputDecoration(
                          labelText: 'Search',
                          hintText: 'Start typing to search',
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color(0xFF8C98A8).withOpacity(0.2),
                            ),
                          ),
                        ),
                      ),
                      onSelect: (Country country) =>
                          print('Select country: ${country.displayName}'),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black45, width: 1)),
                    height: 45,
                    width: Get.width,
                  ),
                ),
                CommonTextField(
                  textController: controller.stateController,
                  hintText: "State",
                  iconData: Icons.house,
                ),
                CommonTextField(
                  textController: controller.cityController,
                  hintText: "City",
                  iconData: Icons.location_city,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 80,
                width: Get.width,
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Next",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
