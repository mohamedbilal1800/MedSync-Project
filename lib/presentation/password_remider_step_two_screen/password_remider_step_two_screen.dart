import 'bloc/password_remider_step_two_bloc.dart';
import 'models/password_remider_step_two_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/core/utils/validation_functions.dart';
import 'package:medsync_project/widgets/custom_button.dart';
import 'package:medsync_project/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PasswordRemiderStepTwoScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<PasswordRemiderStepTwoBloc>(
        create: (context) => PasswordRemiderStepTwoBloc(
            PasswordRemiderStepTwoState(
                passwordRemiderStepTwoModelObj: PasswordRemiderStepTwoModel()))
          ..add(PasswordRemiderStepTwoInitialEvent()),
        child: PasswordRemiderStepTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 24, top: 61, right: 24),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: getHorizontalSize(178),
                                  child: Text("msg_enter_a_new_password".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtNotoSansBold30
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06))))),
                          Padding(
                              padding: getPadding(top: 17),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansMedium12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.14))),
                                    BlocBuilder<PasswordRemiderStepTwoBloc,
                                            PasswordRemiderStepTwoState>(
                                        builder: (context, state) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          autofocus: true,
                                          controller:
                                              state.newpasswordController,
                                          hintText: "msg_place_new_password".tr,
                                          margin: getMargin(top: 4),
                                          variant: TextFormFieldVariant
                                              .OutlineGray100,
                                          shape: TextFormFieldShape
                                              .RoundedBorder14,
                                          padding:
                                              TextFormFieldPadding.PaddingT14_1,
                                          fontStyle: TextFormFieldFontStyle
                                              .NotoSansRegular14,
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          prefix: Container(
                                              margin: getMargin(
                                                  left: 16,
                                                  top: 15,
                                                  right: 8,
                                                  bottom: 15),
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgLock)),
                                          prefixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(48)),
                                          suffix: InkWell(
                                              onTap: () {
                                                context
                                                    .read<
                                                        PasswordRemiderStepTwoBloc>()
                                                    .add(ChangePasswordVisibilityEvent(
                                                        value: !state
                                                            .isShowPassword));
                                              },
                                              child: Container(
                                                  margin: getMargin(
                                                      left: 30,
                                                      top: 15,
                                                      right: 12,
                                                      bottom: 15),
                                                  child: CustomImageView(
                                                      svgPath: state
                                                              .isShowPassword
                                                          ? ImageConstant
                                                              .imgIconHidepassword
                                                          : ImageConstant
                                                              .imgIconHidepassword))),
                                          suffixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(48)),
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidPassword(value,
                                                    isRequired: true))) {
                                              return "Please enter valid password";
                                            }
                                            return null;
                                          },
                                          isObscureText: state.isShowPassword);
                                    })
                                  ])),
                          Padding(
                              padding: getPadding(top: 21),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose,
                                    height: getVerticalSize(16),
                                    width: getHorizontalSize(15),
                                    margin: getMargin(top: 1)),
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: Text("msg_at_least_8_characters".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansMedium12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.14))))
                              ])),
                          Padding(
                              padding: getPadding(top: 10, right: 43),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose,
                                    height: getVerticalSize(16),
                                    width: getHorizontalSize(15),
                                    margin: getMargin(bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: Text("msg_both_uppercase_and".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansMedium12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.14))))
                              ])),
                          Padding(
                              padding: getPadding(top: 8, bottom: 5),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose,
                                    height: getVerticalSize(16),
                                    width: getHorizontalSize(15),
                                    margin: getMargin(bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: Text("msg_at_least_one_number".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansMedium12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.14))))
                              ]))
                        ]))),
            bottomNavigationBar: Container(
                height: getVerticalSize(60),
                width: getHorizontalSize(312),
                margin: getMargin(left: 24, right: 24, bottom: 36),
                child: Stack(alignment: Alignment.topCenter, children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgBtnshadowIndigoA100,
                      height: getVerticalSize(20),
                      width: getHorizontalSize(240),
                      radius: BorderRadius.circular(getHorizontalSize(10)),
                      alignment: Alignment.bottomCenter),
                  CustomButton(
                      height: getVerticalSize(56),
                      width: getHorizontalSize(312),
                      text: "msg_confirm_password".tr,
                      suffixWidget: Container(
                          margin: getMargin(left: 30),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowright)),
                      onTap: () {
                        onTapConfirm(context);
                      },
                      alignment: Alignment.topCenter)
                ]))));
  }

  onTapConfirm(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.passwordRemiderStepThreeScreen,
    );
  }
}
