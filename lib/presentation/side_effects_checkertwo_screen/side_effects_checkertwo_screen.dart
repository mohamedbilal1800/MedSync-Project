import 'bloc/side_effects_checkertwo_bloc.dart';
import 'models/side_effects_checkertwo_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/app_bar/appbar_image.dart';
import 'package:medsync_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:medsync_project/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync_project/widgets/custom_text_form_field.dart';

class SideEffectsCheckertwoScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SideEffectsCheckertwoBloc>(
        create: (context) => SideEffectsCheckertwoBloc(
            SideEffectsCheckertwoState(
                sideEffectsCheckertwoModelObj: SideEffectsCheckertwoModel()))
          ..add(SideEffectsCheckertwoInitialEvent()),
        child: SideEffectsCheckertwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue100,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft7(context);
                    }),
                title: AppbarSubtitle(
                    text: "lbl_results_found".tr, margin: getMargin(left: 58)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(19),
                      svgPath: ImageConstant.imgHome,
                      margin:
                          getMargin(left: 32, top: 15, right: 32, bottom: 20),
                      onTap: () {
                        onTapHome7(context);
                      })
                ]),
            body: BlocSelector<SideEffectsCheckertwoBloc,
                    SideEffectsCheckertwoState, TextEditingController?>(
                selector: (state) => state.resultsshownController,
                builder: (context, resultsshownController) {
                  return CustomTextFormField(
                      focusNode: FocusNode(),
                      autofocus: true,
                      controller: resultsshownController,
                      hintText: "msg_results_will_be".tr,
                      margin:
                          getMargin(left: 20, top: 26, right: 20, bottom: 600),
                      variant: TextFormFieldVariant.OutlineRed600,
                      shape: TextFormFieldShape.RoundedBorder6,
                      padding: TextFormFieldPadding.PaddingT31,
                      fontStyle: TextFormFieldFontStyle.InterRegular14,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                          margin:
                              getMargin(left: 30, top: 30, right: 2, bottom: 2),
                          child:
                              CustomImageView(svgPath: ImageConstant.imgSend)),
                      suffixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(80)),
                      maxLines: 4);
                })));
  }

  onTapArrowleft7(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapHome7(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
