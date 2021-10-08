// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../screens/core/home_page.dart' as _i1;
import '../screens/core/settings_page.dart' as _i2;
import '../screens/labor/labor_journal_page.dart' as _i3;
import '../screens/labor/labor_page.dart' as _i4;
import '../screens/labor/labor_page/additional_info_page.dart' as _i7;
import '../screens/labor/labor_page/attachment_page.dart' as _i8;
import '../screens/labor/labor_page/children_page.dart' as _i9;
import '../screens/labor/labor_page/main_info_page.dart' as _i6;
import '../screens/monitoring/desktop.dart' as _i5;
import 'guards.dart' as _i12;

class RootRouter extends _i10.RootStackRouter {
  RootRouter(
      {_i11.GlobalKey<_i11.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i12.AuthGuard authGuard;

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    SettingsRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SettingsPage());
    },
    LaborJournalRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LaborJournalPage());
    },
    LaborRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<LaborRouteArgs>(
          orElse: () => LaborRouteArgs(
              id: pathParams.getString('id'),
              serverCode: queryParams.optString('serverCode')));
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.LaborPage(
              key: args.key, id: args.id, serverCode: args.serverCode));
    },
    DesktopRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.DesktopPage());
    },
    MainInfoRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.MainInfoPage());
    },
    AdditionalInfoRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AdditionalInfoPage());
    },
    AttachmentRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.AttachmentPage());
    },
    ChildrenRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ChildrenPage());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(HomeRoute.name, path: '/', guards: [authGuard]),
        _i10.RouteConfig(SettingsRoute.name, path: '/settings'),
        _i10.RouteConfig(LaborJournalRoute.name, path: '/labor'),
        _i10.RouteConfig(LaborRoute.name, path: '/labor/:id', children: [
          _i10.RouteConfig('#redirect',
              path: '', redirectTo: 'main-info', fullMatch: true),
          _i10.RouteConfig(MainInfoRoute.name, path: 'main-info'),
          _i10.RouteConfig(AdditionalInfoRoute.name, path: 'additional-info'),
          _i10.RouteConfig(AttachmentRoute.name, path: 'attachment'),
          _i10.RouteConfig(ChildrenRoute.name, path: 'children')
        ]),
        _i10.RouteConfig(DesktopRoute.name, path: '/desktop')
      ];
}

/// generated route for [_i1.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for [_i2.SettingsPage]
class SettingsRoute extends _i10.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: '/settings');

  static const String name = 'SettingsRoute';
}

/// generated route for [_i3.LaborJournalPage]
class LaborJournalRoute extends _i10.PageRouteInfo<void> {
  const LaborJournalRoute() : super(name, path: '/labor');

  static const String name = 'LaborJournalRoute';
}

/// generated route for [_i4.LaborPage]
class LaborRoute extends _i10.PageRouteInfo<LaborRouteArgs> {
  LaborRoute(
      {_i11.Key? key,
      required String id,
      String? serverCode,
      List<_i10.PageRouteInfo>? children})
      : super(name,
            path: '/labor/:id',
            args: LaborRouteArgs(key: key, id: id, serverCode: serverCode),
            rawPathParams: {'id': id},
            rawQueryParams: {'serverCode': serverCode},
            initialChildren: children);

  static const String name = 'LaborRoute';
}

class LaborRouteArgs {
  const LaborRouteArgs({this.key, required this.id, this.serverCode});

  final _i11.Key? key;

  final String id;

  final String? serverCode;
}

/// generated route for [_i5.DesktopPage]
class DesktopRoute extends _i10.PageRouteInfo<void> {
  const DesktopRoute() : super(name, path: '/desktop');

  static const String name = 'DesktopRoute';
}

/// generated route for [_i6.MainInfoPage]
class MainInfoRoute extends _i10.PageRouteInfo<void> {
  const MainInfoRoute() : super(name, path: 'main-info');

  static const String name = 'MainInfoRoute';
}

/// generated route for [_i7.AdditionalInfoPage]
class AdditionalInfoRoute extends _i10.PageRouteInfo<void> {
  const AdditionalInfoRoute() : super(name, path: 'additional-info');

  static const String name = 'AdditionalInfoRoute';
}

/// generated route for [_i8.AttachmentPage]
class AttachmentRoute extends _i10.PageRouteInfo<void> {
  const AttachmentRoute() : super(name, path: 'attachment');

  static const String name = 'AttachmentRoute';
}

/// generated route for [_i9.ChildrenPage]
class ChildrenRoute extends _i10.PageRouteInfo<void> {
  const ChildrenRoute() : super(name, path: 'children');

  static const String name = 'ChildrenRoute';
}
