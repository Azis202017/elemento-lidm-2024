import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/permission_camera_scanner/bindings/permission_camera_scanner_binding.dart';
import '../modules/permission_camera_scanner/views/permission_camera_scanner_view.dart';
import '../modules/scanner/bindings/scanner_binding.dart';
import '../modules/scanner/views/scanner_view.dart';
import '../modules/splash_1/bindings/splash_1_binding.dart';
import '../modules/splash_1/views/splash_1_view.dart';
import '../modules/splash_2/bindings/splash_2_binding.dart';
import '../modules/splash_2/views/splash_2_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_1;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_1,
      page: () => const Splash1View(),
      binding: Splash1Binding(),
    ),
    GetPage(
      name: _Paths.SPLASH_2,
      page: () => const Splash2View(),
      binding: Splash2Binding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SCANNER,
      page: () => const ScannerView(),
      binding: ScannerBinding(),
    ),
    GetPage(
      name: _Paths.PERMISSION_CAMERA_SCANNER,
      page: () => const PermissionCameraScannerView(),
      binding: PermissionCameraScannerBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
