import 'bloc/side_effects_checkerone_bloc.dart';
import 'models/side_effects_checkerone_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/custom_text_form_field.dart';

class SideEffectsCheckeroneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SideEffectsCheckeroneBloc>(
        create: (context) => SideEffectsCheckeroneBloc(
            SideEffectsCheckeroneState(
                sideEffectsCheckeroneModelObj: SideEffectsCheckeroneModel()))
          ..add(SideEffectsCheckeroneInitialEvent()),
        child: SideEffectsCheckeroneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue100,
            resizeToAvoidBottomInset: false,
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
                          padding: getPadding(top: 22),
                          child: Text("msg_side_effects_checker2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNotoSansBold30Black900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.06)))),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("lbl_medicine".tr,
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
                                    BlocSelector<
                                            SideEffectsCheckeroneBloc,
                                            SideEffectsCheckeroneState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.medicineinputController,
                                        builder:
                                            (context, medicineinputController) {
                                          return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              autofocus: true,
                                              controller:
                                                  medicineinputController,
                                              hintText:
                                                  "msg_enter_the_medicine".tr,
                                              variant: TextFormFieldVariant
                                                  .OutlineIndigoA100,
                                              shape: TextFormFieldShape
                                                  .RoundedBorder14,
                                              padding: TextFormFieldPadding
                                                  .PaddingAll14,
                                              fontStyle: TextFormFieldFontStyle
                                                  .NotoSansRegular14Bluegray900);
                                        })
                                  ]))),
                      Padding(
                          padding: getPadding(top: 13),
                          child: Text("lbl_type".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNotoSansBold16)),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 3, bottom: 5),
                              decoration: AppDecoration.outlineBlack900,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    BlocSelector<
                                            SideEffectsCheckeroneBloc,
                                            SideEffectsCheckeroneState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.typeinputController,
                                        builder:
                                            (context, typeinputController) {
                                          return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              autofocus: true,
                                              controller: typeinputController,
                                              hintText: "lbl_enter_the_type".tr,
                                              variant: TextFormFieldVariant
                                                  .OutlineIndigoA100,
                                              shape: TextFormFieldShape
                                                  .RoundedBorder14,
                                              padding: TextFormFieldPadding
                                                  .PaddingAll14,
                                              fontStyle: TextFormFieldFontStyle
                                                  .NotoSansRegular14Bluegray900,
                                              textInputAction:
                                                  TextInputAction.done);
                                        })
                                  ])))
                    ])),
            bottomNavigationBar: GestureDetector(
                onTap: () {
                  onTapButton(context);
                },
                child: Container(
                    margin: getMargin(left: 116, right: 44, bottom: 44),
                    decoration: AppDecoration.fillIndigoA200.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                              padding: getPadding(bottom: 1),
                              child: Text("msg_find_side_effects".tr,
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
                              margin: getMargin(left: 48))
                        ])))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sideEffectsCheckertwoScreen,
    );
  }
}
