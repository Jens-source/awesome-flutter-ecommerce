import 'package:ecommerce/core/bindings/on_boarding_bindings.dart';
import 'package:ecommerce/presentation/pages/main/main_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static String initial = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => const MainPage(),
        binding: HomeBindings()),
  ];
}
