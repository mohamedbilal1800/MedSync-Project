import 'bloc/med_finder_one_bloc.dart';
import 'models/med_finder_one_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';

class MedFinderOneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<MedFinderOneBloc>(
        create: (context) => MedFinderOneBloc(
            MedFinderOneState(medFinderOneModelObj: MedFinderOneModel()))
          ..add(MedFinderOneInitialEvent()),
        child: MedFinderOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedFinderOneBloc, MedFinderOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blue100,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 24, top: 35, right: 24, bottom: 35),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowleft,
                            height: getSize(24),
                            width: getSize(24),
                            onTap: () {
                              onTapImgArrowleft(context);
                            }),
                        Padding(
                            padding: getPadding(left: 45, top: 16),
                            child: Text("lbl_find_medicine".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNotoSansBold30.copyWith(
                                    letterSpacing: getHorizontalSize(0.06)))),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Text("lbl_disease_name".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNotoSansBold16)),
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                margin: getMargin(top: 6),
                                decoration: AppDecoration.outlineBlack900,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: double.maxFinite,
                                          child: Container(
                                              width: getHorizontalSize(312),
                                              padding: getPadding(
                                                  left: 16,
                                                  top: 13,
                                                  right: 16,
                                                  bottom: 13),
                                              decoration: AppDecoration
                                                  .outlineIndigoA100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder14),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 2),
                                                        child: Text(
                                                            "msg_type_name_of_the2"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtNotoSansRegular14Bluegray900
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.17))))
                                                  ])))
                                    ]))),
                        Padding(
                            padding: getPadding(top: 12),
                            child: Text("lbl_symptoms".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNotoSansBold16)),
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                margin: getMargin(top: 4),
                                decoration: AppDecoration.outlineBlack900,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: double.maxFinite,
                                          child: Container(
                                              width: getHorizontalSize(312),
                                              padding: getPadding(
                                                  left: 16,
                                                  top: 13,
                                                  right: 16,
                                                  bottom: 13),
                                              decoration: AppDecoration
                                                  .outlineIndigoA100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder14),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 2),
                                                        child: Text(
                                                            "msg_what_are_the_symptoms"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtNotoSansRegular14Bluegray900
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.17))))
                                                  ])))
                                    ]))),
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                width: getHorizontalSize(311),
                                margin: getMargin(left: 1, top: 23, bottom: 5),
                                padding: getPadding(all: 1),
                                decoration: AppDecoration.outlineRed600
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder6),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(268),
                                          margin: getMargin(
                                              left: 10, top: 2, right: 28),
                                          child: Text("msg_eg_fever_cough".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterRegular14)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgSend,
                                          height: getSize(7),
                                          width: getSize(7),
                                          alignment: Alignment.centerRight,
                                          margin: getMargin(top: 16))
                                    ])))
                      ])),
              bottomNavigationBar: GestureDetector(
                  onTap: () {
                    onTapButton(context);
                  },
                  child: Container(
                      margin: getMargin(left: 124, right: 44, bottom: 44),
                      decoration: AppDecoration.fillIndigoA200.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                                padding: getPadding(bottom: 1),
                                child: Text("lbl_find_medicine2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtNotoSansSemiBold16
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.19)))),
                            CustomImageView(
                                imagePath: ImageConstant.imgImage3,
                                height: getSize(24),
                                width: getSize(24),
                                margin: getMargin(left: 57))
                          ])))));
    });
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.medFinderTwoScreen,
    );
  }
}
