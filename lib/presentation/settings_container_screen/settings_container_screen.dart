import 'bloc/settings_container_bloc.dart';
import 'models/settings_container_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/presentation/settings_page/settings_page.dart';
import 'package:medsync_project/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class SettingsContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsContainerBloc>(
        create: (context) => SettingsContainerBloc(SettingsContainerState(
            settingsContainerModelObj: SettingsContainerModel()))
          ..add(SettingsContainerInitialEvent()),
        child: SettingsContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsContainerBloc, SettingsContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blue10001,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.settingsPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homebluegray200:
        return "/";
      case BottomBarEnum.Dashboard:
        return "/";
      case BottomBarEnum.Iconmenuprogress:
        return "/";
      case BottomBarEnum.Settings:
        return AppRoutes.settingsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.settingsPage:
        return SettingsPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
