import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/home_main/menupage/bindings/menu_page_binding.dart';
import '../modules/home/home_main/menupage/views/menu_page_view.dart';
import '../modules/home/home_main/views/home_main_view.dart';
import '../modules/home/massage/views/massage_view.dart';
import '../modules/home/pose/views/pose_view.dart';
import '../modules/home/setting/arlim/bindings/arlim_binding.dart';
import '../modules/home/setting/arlim/views/arlim_view.dart';
import '../modules/home/setting/auto_in_place/bindings/auto_in_place_binding.dart';
import '../modules/home/setting/auto_in_place/views/auto_in_place_view.dart';
import '../modules/home/setting/bluetooth/bindings/bluetooth_binding.dart';
import '../modules/home/setting/bluetooth/views/bluetooth_view.dart';
import '../modules/home/setting/languange/bindings/languange_binding.dart';
import '../modules/home/setting/languange/views/languange_view.dart';
import '../modules/home/setting/massage_chair_update/bindings/massage_chair_update_binding.dart';
import '../modules/home/setting/massage_chair_update/views/massage_chair_update_view.dart';
import '../modules/home/setting/massage_led/bindings/massage_led_binding.dart';
import '../modules/home/setting/massage_led/views/massage_led_view.dart';
import '../modules/home/setting/massage_time/bindings/massage_time_binding.dart';
import '../modules/home/setting/massage_time/views/massage_time_view.dart';
import '../modules/home/setting/remote_control_update/bindings/remote_control_update_binding.dart';
import '../modules/home/setting/remote_control_update/views/remote_control_update_view.dart';
import '../modules/home/setting/sound/bindings/sound_binding.dart';
import '../modules/home/setting/sound/views/sound_view.dart';
import '../modules/home/setting/views/setting_view.dart';
import '../modules/home/setting/wifi/bindings/wifi_binding.dart';
import '../modules/home/setting/wifi/connect_wifi/bindings/connect_wifi_binding.dart';
import '../modules/home/setting/wifi/connect_wifi/init_setting_guide/bindings/init_setting_guide_binding.dart';
import '../modules/home/setting/wifi/connect_wifi/init_setting_guide/views/init_setting_guide_view.dart';
import '../modules/home/setting/wifi/connect_wifi/router_change_guide/bindings/router_change_guide_binding.dart';
import '../modules/home/setting/wifi/connect_wifi/router_change_guide/views/router_change_guide_view.dart';
import '../modules/home/setting/wifi/connect_wifi/try_connect/bindings/try_connect_binding.dart';
import '../modules/home/setting/wifi/connect_wifi/try_connect/views/try_connect_view.dart';
import '../modules/home/setting/wifi/connect_wifi/views/connect_wifi_view.dart';
import '../modules/home/setting/wifi/views/wifi_view.dart';
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
          children: [
            GetPage(
              name: _Paths.WIFI,
              page: () => const WifiView(),
              binding: WifiBinding(),
              children: [
                GetPage(
                  name: _Paths.CONNECT_WIFI,
                  page: () => const ConnectWifiView(),
                  binding: ConnectWifiBinding(),
                  children: [
                    GetPage(
                      name: _Paths.TRY_CONNECT,
                      page: () => const TryConnectView(),
                      binding: TryConnectBinding(),
                    ),
                    GetPage(
                      name: _Paths.INIT_SETTING_GUIDE,
                      page: () => const InitSettingGuideView(),
                      binding: InitSettingGuideBinding(),
                    ),
                    GetPage(
                      name: _Paths.ROUTER_CHANGE_GUIDE,
                      page: () => const RouterChangeGuideView(),
                      binding: RouterChangeGuideBinding(),
                    ),
                  ],
                ),
              ],
            ),
            GetPage(
              name: _Paths.BLUETOOTH,
              page: () => const BluetoothView(),
              binding: BluetoothBinding(),
            ),
            GetPage(
              name: _Paths.LANGUANGE,
              page: () => const LanguageView(),
              binding: LanguangeBinding(),
            ),
            GetPage(
              name: _Paths.SOUND,
              page: () => const SoundView(),
              binding: SoundBinding(),
            ),
            GetPage(
              name: _Paths.ARLIM,
              page: () => const ArlimView(),
              binding: ArlimBinding(),
            ),
            GetPage(
              name: _Paths.MASSAGE_TIME,
              page: () => const MassageTimeView(),
              binding: MassageTimeBinding(),
            ),
            GetPage(
              name: _Paths.AUTO_IN_PLACE,
              page: () => const AutoInPlaceView(),
              binding: AutoInPlaceBinding(),
            ),
            GetPage(
              name: _Paths.REMOTE_CONTROL_UPDATE,
              page: () => const RemoteControlUpdateView(),
              binding: RemoteControlUpdateBinding(),
            ),
            GetPage(
              name: _Paths.MASSAGE_LED,
              page: () => const MassageLedView(),
              binding: MassageLedBinding(),
            ),
            GetPage(
              name: _Paths.MASSAGE_CHAIR_UPDATE,
              page: () => const MassageChairUpdateView(),
              binding: MassageChairUpdateBinding(),
            ),
          ],
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
