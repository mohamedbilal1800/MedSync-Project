import 'bloc/notification_settings_spacing_bloc.dart';
import 'models/notification_settings_spacing_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/app_bar/appbar_image.dart';
import 'package:medsync_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:medsync_project/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync_project/widgets/custom_switch.dart';

class NotificationSettingsSpacingScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationSettingsSpacingBloc>(
        create: (context) => NotificationSettingsSpacingBloc(
            NotificationSettingsSpacingState(
                notificationSettingsSpacingModelObj:
                    NotificationSettingsSpacingModel()))
          ..add(NotificationSettingsSpacingInitialEvent()),
        child: NotificationSettingsSpacingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            appBar: CustomAppBar(
                height: getVerticalSize(65),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleft11(context);
                    }),
                title: AppbarSubtitle(
                    text: "msg_notification_settings".tr,
                    margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 40, right: 24, bottom: 40),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: fs.Svg(ImageConstant.imgSpacingBlue900),
                        fit: BoxFit.cover)),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 44),
                              decoration: AppDecoration.fillGray100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder14),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 4, bottom: 5),
                                                  child: Text(
                                                      "msg_all_notifications"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNotoSansBold16)),
                                              BlocSelector<
                                                      NotificationSettingsSpacingBloc,
                                                      NotificationSettingsSpacingState,
                                                      bool?>(
                                                  selector: (state) =>
                                                      state.isSelectedSwitch,
                                                  builder: (context,
                                                      isSelectedSwitch) {
                                                    return CustomSwitch(
                                                        value: isSelectedSwitch,
                                                        onChanged: (value) {
                                                          context
                                                              .read<
                                                                  NotificationSettingsSpacingBloc>()
                                                              .add(ChangeSwitchEvent(
                                                                  value:
                                                                      value));
                                                        });
                                                  })
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 20),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.indigo50))
                                  ])))
                    ]))));
  }

  onTapArrowleft11(BuildContext context) {
    NavigatorService.goBack();
  }
}
