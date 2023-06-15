import 'bloc/notification_settings_bloc.dart';
import 'models/notification_settings_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/app_bar/appbar_image.dart';
import 'package:medsync_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:medsync_project/widgets/app_bar/custom_app_bar.dart';

class NotificationSettingsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationSettingsBloc>(
        create: (context) => NotificationSettingsBloc(NotificationSettingsState(
            notificationSettingsModelObj: NotificationSettingsModel()))
          ..add(NotificationSettingsInitialEvent()),
        child: NotificationSettingsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationSettingsBloc, NotificationSettingsState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blue10001,
              body: Container(
                  height: size.height,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: getPadding(left: 24, top: 41, right: 24),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomAppBar(
                                      height: getVerticalSize(24),
                                      leadingWidth: 48,
                                      leading: AppbarImage(
                                          height: getSize(24),
                                          width: getSize(24),
                                          svgPath: ImageConstant.imgArrowleft,
                                          margin: getMargin(left: 24),
                                          onTap: () {
                                            onTapArrowleft10(context);
                                          }),
                                      title: AppbarSubtitle(
                                          text: "msg_notification_settings".tr,
                                          margin: getMargin(left: 12))),
                                  Container(
                                      width: double.maxFinite,
                                      child: Container(
                                          margin: getMargin(top: 19),
                                          decoration: AppDecoration.fillGray100,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(top: 20),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 4,
                                                                      bottom:
                                                                          5),
                                                              child: Text(
                                                                  "msg_all_notifications"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtNotoSansBold16)),
                                                          Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: EdgeInsets
                                                                  .all(0),
                                                              color:
                                                                  ColorConstant
                                                                      .gray100,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder14),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          32),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          54),
                                                                  decoration: AppDecoration
                                                                      .fillGray100
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder14),
                                                                  child: Stack(
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgArrowdownIndigoA200,
                                                                            height: getVerticalSize(32),
                                                                            width: getHorizontalSize(54),
                                                                            alignment: Alignment.center,
                                                                            onTap: () {
                                                                              onTapImgArrowdown(context);
                                                                            })
                                                                      ])))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 20),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color: ColorConstant
                                                            .indigo50))
                                              ])))
                                ]))),
                    CustomImageView(
                        svgPath: ImageConstant.imgSpacingBlue900,
                        height: getVerticalSize(196),
                        width: getHorizontalSize(360),
                        alignment: Alignment.topCenter)
                  ]))));
    });
  }

  onTapArrowleft10(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapImgArrowdown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationSettingsSpacingScreen,
    );
  }
}
