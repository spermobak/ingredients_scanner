import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ingredients_scanner/features/other/page/app_wrapper_page.dart';

import '../../features/authentication/presentation/pages/auth_navigation_screen.dart';
import '../../features/authentication/presentation/pages/sign_in_page.dart';
import '../../features/authentication/presentation/pages/sign_up_page.dart';
import '../../features/authentication/presentation/pages/verify_email.dart';
import '../../features/food_preferences/presentation/pages/food_preferences_page.dart';
import '../../features/other/page/home/home_navigation_page.dart';
import '../../features/other/page/home/home_page.dart';
import '../../features/other/page/home/menu_navigation_page.dart';
import '../../features/text_recognition/presentation/pages/result_pafe.dart';
import '../../features/other/page/home/scanner_page.dart';
import '../../features/text_recognition/domain/entities/text_recognition_entity.dart';
import '../../features/camera_controller/presentation/page/camera_page.dart';
import '../../features/user_data/presentation/pages/profile_page.dart';
import '../../features/other/page/menu/user_menu_page.dart';
import '../../features/user_preferences/presentation/page/user_preferences_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AppWrapperRoute.page, initial: true, children: [
          AutoRoute(
            page: HomeNavigationRoute.page,
            initial: true,
            children: [
              AutoRoute(
                  path: 'menu',
                  page: MenuNavigationRoute.page,
                  children: [
                    AutoRoute(page: UserMenuRoute.page, initial: true),
                    AutoRoute(page: FoodPreferencesRoute.page),
                    AutoRoute(page: ProfileRoute.page),
                    AutoRoute(page: UserPreferencesRoute.page),
                  ]),
              AutoRoute(
                  path: 'scann',
                  page: ScannerNavigationRoute.page,
                  children: [
                    AutoRoute(
                        path: 'scanner', page: CameraRoute.page, initial: true),
                    AutoRoute(path: 'result', page: ResultRoute.page),
                  ]),
              AutoRoute(path: 'home', page: HomeRoute.page, initial: true),
            ],
          ),
          AutoRoute(
            page: AuthNavigationRoute.page,
            keepHistory: false,
            children: [
              AutoRoute(page: VerifyEmailRoute.page),
              AutoRoute(page: SignInRoute.page, initial: true),
              AutoRoute(page: SignUpRoute.page),
            ],
          ),
        ])
      ];
}
