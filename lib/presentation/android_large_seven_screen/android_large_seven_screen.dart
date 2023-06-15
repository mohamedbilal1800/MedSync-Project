import 'bloc/android_large_seven_bloc.dart';
import 'models/android_large_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/app_bar/appbar_image.dart';
import 'package:medsync_project/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync_project/widgets/custom_text_form_field.dart';

class AndroidLargeSevenScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeSevenBloc>(
        create: (context) => AndroidLargeSevenBloc(AndroidLargeSevenState(
            androidLargeSevenModelObj: AndroidLargeSevenModel()))
          ..add(AndroidLargeSevenInitialEvent()),
        child: AndroidLargeSevenScreen());
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
                      onTapArrowleft1(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(19),
                      svgPath: ImageConstant.imgHome,
                      margin:
                          getMargin(left: 32, top: 15, right: 32, bottom: 20),
                      onTap: () {
                        onTapHome1(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 6, right: 24, bottom: 6),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_current_medication".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNotoSansBold30Black900.copyWith(
                              letterSpacing: getHorizontalSize(0.06))),
                      BlocSelector<AndroidLargeSevenBloc,
                              AndroidLargeSevenState, TextEditingController?>(
                          selector: (state) => state.medcounterController,
                          builder: (context, medcounterController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: medcounterController,
                                hintText: "lbl_med_1".tr,
                                margin: getMargin(top: 32));
                          }),
                      BlocSelector<AndroidLargeSevenBloc,
                              AndroidLargeSevenState, TextEditingController?>(
                          selector: (state) => state.medcounteroneController,
                          builder: (context, medcounteroneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: medcounteroneController,
                                hintText: "lbl_med_2".tr,
                                margin: getMargin(top: 11));
                          }),
                      BlocSelector<AndroidLargeSevenBloc,
                              AndroidLargeSevenState, TextEditingController?>(
                          selector: (state) => state.medcountertwoController,
                          builder: (context, medcountertwoController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: medcountertwoController,
                                hintText: "lbl_med_3".tr,
                                margin: getMargin(top: 11, bottom: 5),
                                textInputAction: TextInputAction.done);
                          })
                    ]))));
  }

  onTapArrowleft1(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapHome1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
