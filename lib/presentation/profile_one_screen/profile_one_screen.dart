import 'bloc/profile_one_bloc.dart';
import 'models/profile_one_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/custom_icon_button.dart';

class ProfileOneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileOneBloc>(
        create: (context) => ProfileOneBloc(
            ProfileOneState(profileOneModelObj: ProfileOneModel()))
          ..add(ProfileOneInitialEvent()),
        child: ProfileOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileOneBloc, ProfileOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blue10001,
              body: Container(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: SingleChildScrollView(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      width: double.maxFinite,
                                      padding: getPadding(
                                          left: 100,
                                          top: 25,
                                          right: 100,
                                          bottom: 25),
                                      decoration: AppDecoration.fillGray90001,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 18),
                                                child: Text("lbl_profile".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtIBMPlexMonoBold35))
                                          ]))),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      padding: getPadding(
                                          left: 11,
                                          top: 10,
                                          right: 11,
                                          bottom: 10),
                                      decoration: AppDecoration.fillGray90001,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 11, right: 13),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child:
                                                                    Container(
                                                                        decoration: AppDecoration.fillBluegray100.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .circleBorder75),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                  decoration: AppDecoration.fillBluegray100.copyWith(borderRadius: BorderRadiusStyle.circleBorder75),
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Container(height: getSize(150), width: getSize(150), decoration: BoxDecoration(color: ColorConstant.blueGray100, borderRadius: BorderRadius.circular(getHorizontalSize(75))))
                                                                                  ]))
                                                                            ]))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            56),
                                                                child: Text(
                                                                    "lbl_madison"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtIBMPlexMonoBold30)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "lbl_25".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtIBMPlexMonoMedium17)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 3,
                                                                        top:
                                                                            23),
                                                                child: Text(
                                                                    "lbl_info"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterMedium13))
                                                          ]),
                                                      CustomIconButton(
                                                          height: 54,
                                                          width: 54,
                                                          margin: getMargin(
                                                              left: 29,
                                                              top: 218,
                                                              bottom: 37),
                                                          variant:
                                                              IconButtonVariant
                                                                  .FillRed400,
                                                          shape: IconButtonShape
                                                              .CircleBorder27,
                                                          padding:
                                                              IconButtonPadding
                                                                  .PaddingAll19,
                                                          onTap: () {
                                                            onTapBtnEdit(
                                                                context);
                                                          },
                                                          child: CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgEdit))
                                                    ])),
                                            Container(
                                                width: double.maxFinite,
                                                child: Container(
                                                    width:
                                                        getHorizontalSize(334),
                                                    margin: getMargin(
                                                        left: 3,
                                                        top: 76,
                                                        right: 1),
                                                    padding: getPadding(
                                                        left: 8, right: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder10,
                                                        image: DecorationImage(
                                                            image: fs.Svg(
                                                                ImageConstant
                                                                    .imgGroup25),
                                                            fit: BoxFit.cover)),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 6),
                                                              child: Text(
                                                                  "lbl_date_of_birth"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtIBMPlexMonoMedium12)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 25),
                                                              child: Text(
                                                                  "lbl_28_12_97"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtIBMPlexMonoMedium20))
                                                        ]))),
                                            Container(
                                                width: double.maxFinite,
                                                child: Container(
                                                    width:
                                                        getHorizontalSize(334),
                                                    margin: getMargin(
                                                        top: 22, right: 4),
                                                    padding: getPadding(
                                                        left: 11,
                                                        top: 1,
                                                        right: 11,
                                                        bottom: 1),
                                                    decoration: AppDecoration
                                                        .fillBluegray90001
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder10),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 3),
                                                              child: Text(
                                                                  "lbl_phone_number"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtIBMPlexMonoMedium12)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_96744_56241"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtIBMPlexMonoMedium20))
                                                        ]))),
                                            Container(
                                                width: double.maxFinite,
                                                child: Container(
                                                    width:
                                                        getHorizontalSize(334),
                                                    margin: getMargin(
                                                        top: 23,
                                                        right: 4,
                                                        bottom: 170),
                                                    padding: getPadding(
                                                        left: 11,
                                                        top: 1,
                                                        right: 11,
                                                        bottom: 1),
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: fs.Svg(
                                                                ImageConstant
                                                                    .imgGroup24),
                                                            fit: BoxFit.cover)),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "lbl_full_name"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtIBMPlexMonoMedium12),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 11),
                                                              child: Text(
                                                                  "lbl_madison_johnson"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtIBMPlexMonoMedium20)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 2,
                                                                      top: 58,
                                                                      bottom:
                                                                          31),
                                                              child: Text(
                                                                  "lbl_medical_history"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtIBMPlexMonoMedium20))
                                                        ])))
                                          ])))
                            ])))
                      ]))));
    });
  }

  onTapBtnEdit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileEditFormScreen,
    );
  }
}
