import 'bloc/android_large_nine_bloc.dart';
import 'models/android_large_nine_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/app_bar/appbar_image.dart';
import 'package:medsync_project/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync_project/widgets/custom_text_form_field.dart';

class AndroidLargeNineScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeNineBloc>(
        create: (context) => AndroidLargeNineBloc(AndroidLargeNineState(
            androidLargeNineModelObj: AndroidLargeNineModel()))
          ..add(AndroidLargeNineInitialEvent()),
        child: AndroidLargeNineScreen());
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
                      onTapArrowleft3(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(19),
                      svgPath: ImageConstant.imgHome,
                      margin:
                          getMargin(left: 32, top: 15, right: 32, bottom: 20),
                      onTap: () {
                        onTapHome3(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 21, top: 6, right: 21, bottom: 6),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 3),
                          child: Text("lbl_medicine_s".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNotoSansBold30Black900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.06)))),
                      BlocSelector<AndroidLargeNineBloc, AndroidLargeNineState,
                              TextEditingController?>(
                          selector: (state) => state.medcounterController,
                          builder: (context, medcounterController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: medcounterController,
                                hintText: "lbl_med_1".tr,
                                margin: getMargin(left: 3, top: 32, right: 3));
                          }),
                      BlocSelector<AndroidLargeNineBloc, AndroidLargeNineState,
                              TextEditingController?>(
                          selector: (state) => state.medcounteroneController,
                          builder: (context, medcounteroneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: medcounteroneController,
                                hintText: "lbl_med_2".tr,
                                margin: getMargin(left: 3, top: 11, right: 3));
                          }),
                      BlocSelector<AndroidLargeNineBloc, AndroidLargeNineState,
                              TextEditingController?>(
                          selector: (state) => state.medcountertwoController,
                          builder: (context, medcountertwoController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: medcountertwoController,
                                hintText: "lbl_med_3".tr,
                                margin: getMargin(left: 3, top: 11, right: 3));
                          }),
                      BlocSelector<AndroidLargeNineBloc, AndroidLargeNineState,
                              TextEditingController?>(
                          selector: (state) => state.medcounterController1,
                          builder: (context, medcounterController1) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: medcounterController1,
                                hintText: "lbl_med_4".tr,
                                margin: getMargin(left: 6, top: 11),
                                textInputAction: TextInputAction.done);
                          }),
                      Spacer(),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(right: 3, bottom: 78),
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
                                        svgPath: ImageConstant.imgEditBlack900,
                                        height: getSize(34),
                                        width: getSize(34),
                                        alignment: Alignment.center)
                                  ]))))
                    ]))));
  }

  onTapArrowleft3(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapHome3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
