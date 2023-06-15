import 'bloc/android_large_six_bloc.dart';
import 'models/android_large_six_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/app_bar/appbar_image.dart';
import 'package:medsync_project/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync_project/widgets/custom_button.dart';

class AndroidLargeSixScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeSixBloc>(
        create: (context) => AndroidLargeSixBloc(AndroidLargeSixState(
            androidLargeSixModelObj: AndroidLargeSixModel()))
          ..add(AndroidLargeSixInitialEvent()),
        child: AndroidLargeSixScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeSixBloc, AndroidLargeSixState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blue100,
              appBar: CustomAppBar(
                  height: getVerticalSize(74),
                  leadingWidth: 48,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 24, top: 16, bottom: 15),
                      onTap: () {
                        onTapArrowleft(context);
                      }),
                  actions: [
                    AppbarImage(
                        height: getVerticalSize(20),
                        width: getHorizontalSize(19),
                        svgPath: ImageConstant.imgHome,
                        margin:
                            getMargin(left: 32, top: 15, right: 32, bottom: 20),
                        onTap: () {
                          onTapHome(context);
                        })
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 24, top: 10, right: 24, bottom: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("lbl_medical_history".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtNotoSansBold30Black900.copyWith(
                                letterSpacing: getHorizontalSize(0.06))),
                        CustomButton(
                            height: getVerticalSize(56),
                            text: "msg_current_medication".tr,
                            margin: getMargin(top: 57),
                            padding: ButtonPadding.PaddingAll17,
                            onTap: () {
                              onTapCurrent(context);
                            }),
                        CustomButton(
                            height: getVerticalSize(56),
                            text: "msg_complete_history".tr,
                            margin: getMargin(top: 32, bottom: 5),
                            padding: ButtonPadding.PaddingAll17,
                            onTap: () {
                              onTapComplete(context);
                            })
                      ]))));
    });
  }

  onTapCurrent(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeSevenScreen,
    );
  }

  onTapComplete(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeEightScreen,
    );
  }

  onTapArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapHome(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
