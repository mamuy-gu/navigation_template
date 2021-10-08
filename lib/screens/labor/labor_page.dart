import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigation_template/router/router.gr.dart';

class LaborPage extends StatefulWidget {
  const LaborPage({
    Key? key,
    @pathParam required this.id,
    @queryParam this.serverCode,
  }) : super(key: key);

  final String id;
  final String? serverCode;

  @override
  State<LaborPage> createState() => _LaborPageState();
}

class _LaborPageState extends State<LaborPage> {
  final _routes = const [
    MainInfoRoute(),
    AdditionalInfoRoute(),
    AttachmentRoute(),
    ChildrenRoute(),
  ];

  final _tabNames = const [
    'Основная',
    'Дополнительная',
    'Вложения',
    'Дочерние задачи',
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: _routes,
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return DefaultTabController(
          length: _routes.length,
          initialIndex: tabsRouter.activeIndex,
          child: Scaffold(
            appBar: AppBar(
              leading: const AutoBackButton(),
              title: Text('Задача №${widget.id}, server-code: ${widget.serverCode}',),
              bottom: TabBar(
                isScrollable: true,
                onTap: (index) => tabsRouter.setActiveIndex(index),
                tabs: _tabNames.map((e) => Tab(text: e)).toList(),
              ),
            ),
            body: FadeTransition(opacity: animation, child: child),
          ),
        );
      },
    );
  }
}

class NavLink extends StatelessWidget {
  const NavLink({
    Key? key,
    required this.label,
    required this.destination,
  }) : super(key: key);

  final String label;
  final PageRouteInfo destination;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        final autoRouter = AutoRouter.innerRouterOf(context, LaborRoute.name);
        autoRouter?.push(destination);
      },
      child: Text(label),
    );
  }
}
