import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:navigation_template/router/guards.dart';
import 'package:navigation_template/screens/core/home_page.dart';
import 'package:navigation_template/screens/core/settings_page.dart';
import 'package:navigation_template/screens/labor/labor_journal_page.dart';
import 'package:navigation_template/screens/labor/labor_page.dart';
import 'package:navigation_template/screens/labor/labor_page/additional_info_page.dart';
import 'package:navigation_template/screens/labor/labor_page/attachment_page.dart';
import 'package:navigation_template/screens/labor/labor_page/children_page.dart';
import 'package:navigation_template/screens/labor/labor_page/main_info_page.dart';
import 'package:navigation_template/screens/monitoring/desktop.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(path: '/', page: HomePage, initial: true, guards: [AuthGuard]),
    AutoRoute(path: '/settings', page: SettingsPage),
    AutoRoute(path: '/labor', page: LaborJournalPage),
    AutoRoute(
      path: '/labor/:id',
      page: LaborPage,
      children: [
        RedirectRoute(path: '', redirectTo: 'main-info'),
        AutoRoute(path: 'main-info', page: MainInfoPage),
        AutoRoute(path: 'additional-info', page: AdditionalInfoPage),
        AutoRoute(path: 'attachment', page: AttachmentPage),
        AutoRoute(path: 'children', page: ChildrenPage),
      ],
    ),
    AutoRoute(path: '/desktop', page: DesktopPage),
    //RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $RootRouter {}
