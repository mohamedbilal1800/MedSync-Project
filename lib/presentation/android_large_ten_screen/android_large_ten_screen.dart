import 'bloc/android_large_ten_bloc.dart';
import 'models/android_large_ten_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/app_bar/appbar_image.dart';
import 'package:medsync_project/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync_project/widgets/custom_text_form_field.dart';

class AndroidLargeTenScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTenBloc>(
        create: (context) => AndroidLargeTenBloc(AndroidLargeTenState(
            androidLargeTenModelObj: AndroidLargeTenModel()))
          ..add(AndroidLargeTenInitialEvent()),
        child: AndroidLargeTenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue100,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(74),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft4(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(19),
                      svgPath: ImageConstant.imgHome,
                      margin:
                          getMargin(left: 32, top: 15, right: 32, bottom: 20),
                      onTap: () {
                        onTapHome4(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 7, right: 24, bottom: 7),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_document_s".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNotoSansBold30Black900.copyWith(
                              letterSpacing: getHorizontalSize(0.06))),
                      Container(
                          height: getVerticalSize(56),
                          width: getHorizontalSize(312),
                          margin: getMargin(top: 32),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 23),
                                    child: Row(children: [
                                      Container(
                                          height: getSize(24),
                                          width: getSize(24),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgFile,
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    alignment:
                                                        Alignment.center),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgFile,
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    alignment: Alignment.center)
                                              ])),
                                      Container(
                                          height: getVerticalSize(22),
                                          width: getHorizontalSize(41),
                                          margin: getMargin(left: 10, top: 2),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text("lbl_doc_1".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtNotoSansSemiBold16
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.19)))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text("lbl_doc_1".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtNotoSansSemiBold16
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.19))))
                                              ]))
                                    ]))),
                            BlocSelector<
                                    AndroidLargeTenBloc,
                                    AndroidLargeTenState,
                                    TextEditingController?>(
                                selector: (state) =>
                                    state.doccountertwoController,
                                builder: (context, doccountertwoController) {
                                  return CustomTextFormField(
                                      width: getHorizontalSize(312),
                                      focusNode: FocusNode(),
                                      autofocus: true,
                                      controller: doccountertwoController,
                                      hintText: "lbl_doc_1".tr,
                                      padding: TextFormFieldPadding.PaddingT17,
                                      alignment: Alignment.center,
                                      prefix: Container(
                                          margin: getMargin(
                                              left: 23,
                                              top: 16,
                                              right: 10,
                                              bottom: 16),
                                          child: CustomImageView(
                                              svgPath: ImageConstant.imgFile)),
                                      prefixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(56)));
                                })
                          ])),
                      BlocSelector<AndroidLargeTenBloc, AndroidLargeTenState,
                              TextEditingController?>(
                          selector: (state) => state.doccounterController,
                          builder: (context, doccounterController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: doccounterController,
                                hintText: "lbl_doc_2".tr,
                                margin: getMargin(top: 12),
                                padding: TextFormFieldPadding.PaddingT17,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 23,
                                        top: 16,
                                        right: 10,
                                        bottom: 16),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgFile)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(56)));
                          }),
                      BlocSelector<AndroidLargeTenBloc, AndroidLargeTenState,
                              TextEditingController?>(
                          selector: (state) => state.doccounterfourController,
                          builder: (context, doccounterfourController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: doccounterfourController,
                                hintText: "lbl_doc_3".tr,
                                margin: getMargin(top: 12),
                                padding: TextFormFieldPadding.PaddingT17,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 23,
                                        top: 16,
                                        right: 10,
                                        bottom: 16),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgFile)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(56)));
                          }),
                      BlocSelector<AndroidLargeTenBloc, AndroidLargeTenState,
                              TextEditingController?>(
                          selector: (state) => state.doccounterfiveController,
                          builder: (context, doccounterfiveController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: doccounterfiveController,
                                hintText: "lbl_doc_4".tr,
                                margin: getMargin(top: 12),
                                padding: TextFormFieldPadding.PaddingT17,
                                textInputAction: TextInputAction.done,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 23,
                                        top: 16,
                                        right: 10,
                                        bottom: 16),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgFile)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(56)));
                          }),
                      Spacer(),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(right: 6, bottom: 76),
                              color: ColorConstant.indigoA200,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusStyle
                                      .roundedBorder20),
                              child: Container(
                                  height: getVerticalSize(68),
                                  width: getHorizontalSize(74),
                                  padding: getPadding(
                                      left: 23, top: 20, right: 23, bottom: 20),
                                  decoration: AppDecoration.fillIndigoA200
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder20),
                                  child: Stack(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle5909,
                                        height: getSize(28),
                                        width: getSize(28),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(14)),
                                        alignment: Alignment.center)
                                  ]))))
                    ]))));
  }

  onTapArrowleft4(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapHome4(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
