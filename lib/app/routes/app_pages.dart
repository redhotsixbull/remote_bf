import 'package:get/get.dart';
import 'package:remote_bf/app/modules/home/home_main/menupage/bindings/menu_page_binding.dart';
import 'package:remote_bf/app/modules/home/home_main/menupage/views/menu_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/home_main/views/home_main_view.dart';
import '../modules/home/massage/views/massage_view.dart';
import '../modules/home/pose/views/pose_view.dart';
import '../modules/home/setting/views/setting_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: _Paths.MASSAGE,
          page: () => const MassageView(),
          //binding: MassageBinding(),
        ),
        GetPage(
          name: _Paths.POSE,
          page: () => const PoseView(),
          //binding: PoseBinding(),
        ),
        GetPage(
          name: _Paths.SETTING,
          page: () => const SettingView(),
          //binding: SettingBinding(),
        ),
        GetPage(
          name: _Paths.HOME_MAIN,
          page: () => const HomeMainView(),
          //binding: HomeMainBinding(),
          children: [
            GetPage(
              name: _Paths.MENU,
              page: () => const MenuPageView(),
              binding: MenuPageBinding(),
            ),
          ],
        ),
      ],
    ),
  ];
}
