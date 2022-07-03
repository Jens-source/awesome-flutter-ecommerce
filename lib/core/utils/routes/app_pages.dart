import 'package:ecommerce/core/bindings/address_form_bindings.dart';
import 'package:ecommerce/core/bindings/on_boarding_bindings.dart';
import 'package:ecommerce/presentation/pages/address_form/address_form_screen.dart';
import 'package:ecommerce/presentation/pages/main/main_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static String initial = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => const MainPage(),
        binding: HomeBindings()),
    GetPage(
        name: _Paths.ADDRESS_FORM,
        page: () => const AddressFormScreen(),
        binding: AddressFormBindings(),
        transition: Transition.downToUp),
  ];
}
