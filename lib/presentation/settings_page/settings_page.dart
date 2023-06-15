import '../settings_page/widgets/settings_item_widget.dart';
import 'bloc/settings_bloc.dart';
import 'models/settings_item_model.dart';
import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/app_bar/appbar_image.dart';
import 'package:medsync_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:medsync_project/widgets/app_bar/custom_app_bar.dart';

class SettingsPage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
        create: (context) =>
            SettingsBloc(SettingsState(settingsModelObj: SettingsModel()))
              ..add(SettingsInitialEvent()),
        child: SettingsPage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            appBar: CustomAppBar(
                height: getVerticalSize(70),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 28),
                    onTap: () {
                      onTapArrowleft8(context);
                    }),
                title: AppbarSubtitle(
                    text: "lbl_settings".tr, margin: getMargin(left: 12))),
            body: Container(
                height: getVerticalSize(626),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: getMargin(left: 24, top: 12, right: 24),
                          decoration: AppDecoration.outlineBlue100,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: BlocSelector<SettingsBloc,
                                            SettingsState, SettingsModel?>(
                                        selector: (state) =>
                                            state.settingsModelObj,
                                        builder: (context, settingsModelObj) {
                                          return ListView.separated(
                                              physics: BouncingScrollPhysics(),
                                              shrinkWrap: true,
                                              separatorBuilder:
                                                  (context, index) {
                                                return SizedBox(
                                                    height: getVerticalSize(1));
                                              },
                                              itemCount: settingsModelObj
                                                      ?.settingsItemList
                                                      .length ??
                                                  0,
                                              itemBuilder: (context, index) {
                                                SettingsItemModel model =
                                                    settingsModelObj
                                                                ?.settingsItemList[
                                                            index] ??
                                                        SettingsItemModel();
                                                return SettingsItemWidget(model,
                                                    onTapMenulist: () {
                                                  onTapMenulist(context);
                                                });
                                              });
                                        }))
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgSpacing,
                      height: getVerticalSize(97),
                      width: getHorizontalSize(360),
                      alignment: Alignment.topCenter)
                ]))));
  }

  onTapMenulist(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.notificationSettingsScreen);
  }

  onTapArrowleft8(BuildContext context) {
    NavigatorService.goBack();
  }
}
