import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/app_bar/appbar_image.dart';
import 'package:medsync_project/widgets/app_bar/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blue10001,
              appBar: CustomAppBar(
                  height: getVerticalSize(129),
                  title: Container(
                      height: getVerticalSize(80.3),
                      width: getHorizontalSize(201),
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                                padding: getPadding(left: 24, top: 39),
                                child: Text("lbl_hi_madison".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtNotoSansBold30.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.06))))),
                        AppbarImage(
                            height: getVerticalSize(40),
                            width: getHorizontalSize(198),
                            imagePath: ImageConstant.imgLogoblackremovebg40x198,
                            margin: getMargin(right: 3, bottom: 40))
                      ])),
                  actions: [
                    Container(
                        height: getSize(40),
                        width: getSize(40),
                        margin: getMargin(left: 24, right: 24, bottom: 40),
                        child: Stack(alignment: Alignment.center, children: [
                          AppbarImage(
                              height: getSize(40),
                              width: getSize(40),
                              svgPath: ImageConstant.imgNotification),
                          AppbarImage(
                              height: getSize(24),
                              width: getSize(24),
                              imagePath: ImageConstant.imgImage13,
                              margin: getMargin(all: 8),
                              onTap: () {
                                onTapImagethirteen(context);
                              })
                        ]))
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 24, top: 55, right: 24, bottom: 55),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapTiles(context);
                            },
                            child: Container(
                                padding: getPadding(all: 20),
                                decoration: AppDecoration.fillIndigoA200
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder10),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage15,
                                      height: getSize(24),
                                      width: getSize(24)),
                                  Padding(
                                      padding: getPadding(
                                          left: 20, top: 1, bottom: 1),
                                      child: Text("lbl_med_schedule".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtNotoSansBold16))
                                ]))),
                        GestureDetector(
                            onTap: () {
                              onTapTiles1(context);
                            },
                            child: Container(
                                margin: getMargin(top: 15),
                                padding: getPadding(
                                    left: 20, top: 19, right: 20, bottom: 19),
                                decoration: AppDecoration.fillIndigoA200
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder10),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage17,
                                      height: getSize(24),
                                      width: getSize(24)),
                                  Padding(
                                      padding: getPadding(left: 20, top: 3),
                                      child: Text("msg_compliance_history".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtNotoSansBold16))
                                ]))),
                        GestureDetector(
                            onTap: () {
                              onTapTiles2(context);
                            },
                            child: Container(
                                margin: getMargin(top: 15),
                                padding: getPadding(
                                    left: 20, top: 19, right: 20, bottom: 19),
                                decoration: AppDecoration.fillIndigoA200
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder10),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage16,
                                      height: getSize(24),
                                      width: getSize(24)),
                                  Padding(
                                      padding: getPadding(left: 20, top: 3),
                                      child: Text("lbl_medical_history".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtNotoSansBold16))
                                ]))),
                        Container(
                            height: getVerticalSize(64),
                            width: getHorizontalSize(312),
                            margin: getMargin(top: 16),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgCut,
                                  height: getSize(32),
                                  width: getSize(32),
                                  alignment: Alignment.topLeft,
                                  margin: getMargin(left: 16, top: 15)),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTiles3(context);
                                      },
                                      child: Container(
                                          padding: getPadding(all: 20),
                                          decoration: AppDecoration
                                              .fillIndigoA200
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder10),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage18,
                                                height: getSize(24),
                                                width: getSize(24)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 20, bottom: 1),
                                                child: Text(
                                                    "msg_side_effects_checker"
                                                        .tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtNotoSansBold16))
                                          ]))))
                            ])),
                        GestureDetector(
                            onTap: () {
                              onTapTiles4(context);
                            },
                            child: Container(
                                margin: getMargin(top: 15),
                                padding: getPadding(all: 20),
                                decoration: AppDecoration.fillIndigoA200
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder10),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage19,
                                      height: getSize(24),
                                      width: getSize(24)),
                                  Padding(
                                      padding: getPadding(
                                          left: 20, top: 1, bottom: 1),
                                      child: Text("lbl_med_finder".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtNotoSansBold16))
                                ]))),
                        GestureDetector(
                            onTap: () {
                              onTapTiles5(context);
                            },
                            child: Container(
                                margin: getMargin(top: 15, bottom: 5),
                                padding: getPadding(
                                    left: 21, top: 19, right: 21, bottom: 19),
                                decoration: AppDecoration.fillIndigoA200
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder10),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage20,
                                      height: getSize(24),
                                      width: getSize(24)),
                                  Padding(
                                      padding: getPadding(left: 19, top: 3),
                                      child: Text("lbl_settings".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtNotoSansBold16))
                                ])))
                      ]))));
    });
  }

  onTapTiles(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addingSupplementationScreen,
    );
  }

  onTapTiles1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.complianceHistoryoneScreen,
    );
  }

  onTapTiles2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeSixScreen,
    );
  }

  onTapTiles3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sideEffectsCheckeroneScreen,
    );
  }

  onTapTiles4(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.medFinderOneScreen,
    );
  }

  onTapTiles5(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsContainerScreen,
    );
  }

  onTapImagethirteen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileOneScreen,
    );
  }
}
