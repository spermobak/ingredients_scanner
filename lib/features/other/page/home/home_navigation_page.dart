import 'package:auto_route/auto_route.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../config/router/router.dart';
import '../../../../injection_container.dart';
import '../../../user_preferences/presentation/bloc/user_preferences_bloc.dart';

@RoutePage()
class HomeNavigationPage extends StatefulWidget {
  const HomeNavigationPage({super.key});

  @override
  State<HomeNavigationPage> createState() => _HomeNavigationPageState();
}

class _HomeNavigationPageState extends State<HomeNavigationPage> {
  final items = const [
    Icon(
      Icons.menu,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.home,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.qr_code_scanner,
      size: 30,
      color: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
        create: (_) => sl<UserPreferencesBloc>(),
        child: AutoTabsRouter.pageView(
          routes: const [
            UserMenuRoute(),
            HomeRoute(),
            ScannerNavigationRoute(),
          ],
          builder: (context, child, _) {
            final tabsRouter = AutoTabsRouter.of(context);
            return Scaffold(
              body: child,
              bottomNavigationBar: CurvedNavigationBar(
                index: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                items: items,
                height: 70,
                backgroundColor: Colors.transparent,
                color: theme.primaryColor,
                animationDuration: const Duration(milliseconds: 300),
              ),
            );
          },
        ));
  }
}
