import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../assets/icons/icons.dart';
import 'navbar/nav_item_enum.dart';
import 'navbar/navbar.dart';
import 'widgets/navigator.dart';
import 'widgets/tab_indicator.dart';

class BottomNavBar extends StatefulWidget {
  static Route route() =>
      MaterialPageRoute<void>(builder: (_) => const BottomNavBar());

  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with TickerProviderStateMixin {
  late TabController _controller;
  late double navBarWidth;
  final List<double> wavePosition = [0.0, 0.2, 0.4, 0.6];

  late AnimationController controller;
  final Map<NavItemEnum, GlobalKey<NavigatorState>> _navigatorKeys = {
    NavItemEnum.home: GlobalKey<NavigatorState>(),
    NavItemEnum.search: GlobalKey<NavigatorState>(),
    NavItemEnum.favourites: GlobalKey<NavigatorState>(),
    NavItemEnum.account: GlobalKey<NavigatorState>(),
  };

  List<NavBar> labels = [
    const NavBar(
      id: 0,
      icon: AppIcons.home,
      title: 'HOME',
    ),
    const NavBar(
      id: 1,
      icon: AppIcons.search,
      title: 'SEARCH',
    ),
    const NavBar(
      id: 2,
      icon: AppIcons.wishlist,
      title: 'FAVOURITES',
    ),
    const NavBar(
      id: 3,
      icon: AppIcons.profile,
      title: 'PROFILE',
    ),
  ];

  int _currentIndex = 0;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    controller.addListener(() {});
    _controller = TabController(length: 4, vsync: this);
    _controller.addListener(onTabChange);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    super.initState();
  }

  void onTabChange() {
    setState(() => _currentIndex = _controller.index);
  }

  Widget _buildPageNavigator(NavItemEnum tabItem) => TabNavigator(
        navigatorKey: _navigatorKeys[tabItem]!,
        tabItem: tabItem,
      );

  void changePage(int index) {
    setState(() => _currentIndex = index);
    _controller.animateTo(index);
  }

  @override
  Widget build(BuildContext context) => HomeTabControllerProvider(
        controller: _controller,
        child: WillPopScope(
          onWillPop: () async {
            final isFirstRouteInCurrentTab =
                !await _navigatorKeys[NavItemEnum.values[_currentIndex]]!
                    .currentState!
                    .maybePop();
            if (isFirstRouteInCurrentTab) {
              if (NavItemEnum.values[_currentIndex] != NavItemEnum.home) {
                changePage(0);
                return false;
              }
            }
            return isFirstRouteInCurrentTab;
          },
          child: AnnotatedRegion(
            value: SystemUiOverlayStyle.light,
            child: Scaffold(
              resizeToAvoidBottomInset: true,
              bottomNavigationBar: Container(
                height: 72 + MediaQuery.of(context).padding.bottom,
                decoration: const BoxDecoration(
                    // color: navigationBarBackgroundColor,
                    ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TabBar(
                      splashBorderRadius: BorderRadius.zero,
                      enableFeedback: true,
                      onTap: (index) {},
                      indicator: const BoxDecoration(),
                      controller: _controller,
                      labelPadding: EdgeInsets.zero,
                      tabs: [
                        TabItemWidget(
                          isActive: _currentIndex == 0,
                          item: labels[0],
                        ),
                        TabItemWidget(
                          isActive: _currentIndex == 1,
                          item: labels[1],
                        ),
                        TabItemWidget(
                          isActive: _currentIndex == 2,
                          item: labels[2],
                        ),
                        TabItemWidget(
                          isActive: _currentIndex == 3,
                          item: labels[3],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _controller,
                children: [
                  _buildPageNavigator(NavItemEnum.home),
                  _buildPageNavigator(NavItemEnum.search),
                  _buildPageNavigator(NavItemEnum.favourites),
                  _buildPageNavigator(NavItemEnum.account),
                ],
              ),
            ),
          ),
        ),
      );
}

class HomeTabControllerProvider extends InheritedWidget {
  const HomeTabControllerProvider({
    required Widget child,
    required this.controller,
    Key? key,
  }) : super(key: key, child: child);

  final TabController controller;

  @override
  bool updateShouldNotify(HomeTabControllerProvider oldWidget) => false;

  static HomeTabControllerProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<HomeTabControllerProvider>()!;
}
