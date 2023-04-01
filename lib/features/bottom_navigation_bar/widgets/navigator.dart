import 'package:flutter/cupertino.dart';

import '../../favourites/presentation/favourites_page.dart';
import '../../home/presentation/home_page.dart';
import '../../profile/presentation/profile_page.dart';
import '../../search/presentation/search_page.dart';
import '../navbar/nav_item_enum.dart';

class TabNavigatorRoutes {
  static const String root = '/';
}

class TabNavigator extends StatefulWidget {
  const TabNavigator({
    required this.navigatorKey,
    required this.tabItem,
    required this.homeScrollController,
    Key? key,
  }) : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey;
  final NavItemEnum tabItem;
  final ScrollController homeScrollController;

  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator>
    with AutomaticKeepAliveClientMixin {
  Map<String, WidgetBuilder> _routeBuilders(
      {required BuildContext context, required RouteSettings settings}) {
    switch (widget.tabItem) {
      case NavItemEnum.home:
        return {
          TabNavigatorRoutes.root: (context) =>
              HomePage(scrollController: widget.homeScrollController),
        };
      case NavItemEnum.search:
        return {
          TabNavigatorRoutes.root: (context) => const SearchPage(),
        };
      case NavItemEnum.favourites:
        return {
          TabNavigatorRoutes.root: (context) => const FavouritesPage(),
        };
      case NavItemEnum.account:
        return {
          TabNavigatorRoutes.root: (context) => const ProfilePage(),
        };

      default:
        return {
          TabNavigatorRoutes.root: (context) => Container(),
        };
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Navigator(
      key: widget.navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        final routeBuilders =
            _routeBuilders(context: context, settings: routeSettings);

        return CupertinoPageRoute<dynamic>(
          builder: (context) => routeBuilders.containsKey(routeSettings.name)
              ? routeBuilders[routeSettings.name]!(
                  context,
                )
              : Container(),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

PageRouteBuilder fade({
  required Widget page,
}) =>
    PageRouteBuilder<Widget>(
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(
        opacity: CurvedAnimation(
          parent: animation,
          curve: const Interval(
            0,
            1,
            curve: Curves.linear,
          ),
        ),
        child: child,
      ),
      pageBuilder: (context, animation, secondaryAnimation) => page,
    );
