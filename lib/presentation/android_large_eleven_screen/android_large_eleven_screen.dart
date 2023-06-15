import 'bloc/android_large_eleven_bloc.dart';
import 'models/android_large_eleven_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/app_bar/appbar_image.dart';
import 'package:medsync_project/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync_project/widgets/custom_text_form_field.dart';

class AndroidLargeElevenScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeElevenBloc>(
        create: (context) => AndroidLargeElevenBloc(AndroidLargeElevenState(
            androidLargeElevenModelObj: AndroidLargeElevenModel()))
          ..add(AndroidLargeElevenInitialEvent()),
        child: AndroidLargeElevenScreen());
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
                      onTapArrowleft5(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(19),
                      svgPath: ImageConstant.imgHome,
                      margin:
                          getMargin(left: 32, top: 15, right: 32, bottom: 20),
                      onTap: () {
                        onTapHome5(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 18, top: 6, right: 18, bottom: 6),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 6),
                          child: Text("lbl_photo_s".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNotoSansBold30Black900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.06)))),
                      BlocSelector<AndroidLargeElevenBloc,
                              AndroidLargeElevenState, TextEditingController?>(
                          selector: (state) => state.imgcounterController,
                          builder: (context, imgcounterController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: imgcounterController,
                                hintText: "lbl_img_1".tr,
                                margin: getMargin(top: 32, right: 12),
                                padding: TextFormFieldPadding.PaddingT17,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 22,
                                        top: 16,
                                        right: 10,
                                        bottom: 16),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgLocation)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(56)));
                          }),
                      BlocSelector<AndroidLargeElevenBloc,
                              AndroidLargeElevenState, TextEditingController?>(
                          selector: (state) => state.imgcounteroneController,
                          builder: (context, imgcounteroneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: imgcounteroneController,
                                hintText: "lbl_img_2".tr,
                                margin: getMargin(top: 11, right: 12),
                                padding: TextFormFieldPadding.PaddingT17,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 22,
                                        top: 16,
                                        right: 10,
                                        bottom: 16),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgLocation)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(56)));
                          }),
                      BlocSelector<AndroidLargeElevenBloc,
                              AndroidLargeElevenState, TextEditingController?>(
                          selector: (state) => state.imgcountertwoController,
                          builder: (context, imgcountertwoController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: imgcountertwoController,
                                hintText: "lbl_img_3".tr,
                                margin: getMargin(top: 11, right: 12),
                                padding: TextFormFieldPadding.PaddingT17,
                                textInputAction: TextInputAction.done,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 22,
                                        top: 16,
                                        right: 10,
                                        bottom: 16),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgLocation)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(56)));
                          }),
                      Spacer(),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(right: 12, bottom: 77),
                              color: ColorConstant.indigoA200,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusStyle
                                      .roundedBorder20),
                              child: Container(
                                  height: getVerticalSize(68),
                                  width: getHorizontalSize(74),
                                  padding: getPadding(
                                      left: 20, top: 17, right: 20, bottom: 17),
                                  decoration: AppDecoration.fillIndigoA200
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder20),
                                  child: Stack(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCamera,
                                        height: getSize(34),
                                        width: getSize(34),
                                        alignment: Alignment.center)
                                  ]))))
                    ]))));
  }

  onTapArrowleft5(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapHome5(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
