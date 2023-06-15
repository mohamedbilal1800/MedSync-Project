import 'bloc/password_remider_step_one_bloc.dart';
import 'models/password_remider_step_one_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/core/utils/validation_functions.dart';
import 'package:medsync_project/widgets/custom_button.dart';
import 'package:medsync_project/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PasswordRemiderStepOneScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<PasswordRemiderStepOneBloc>(
        create: (context) => PasswordRemiderStepOneBloc(
            PasswordRemiderStepOneState(
                passwordRemiderStepOneModelObj: PasswordRemiderStepOneModel()))
          ..add(PasswordRemiderStepOneInitialEvent()),
        child: PasswordRemiderStepOneScreen());
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
                    padding: getPadding(left: 24, top: 62, right: 24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("msg_enter_your_e_mail2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNotoSansBold30.copyWith(
                                  letterSpacing: getHorizontalSize(0.06))),
                          Container(
                              width: getHorizontalSize(310),
                              margin: getMargin(top: 16),
                              child: Text("msg_you_will_receive".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtNotoSansRegular14.copyWith(
                                      letterSpacing: getHorizontalSize(0.17)))),
                          Padding(
                              padding: getPadding(top: 18, bottom: 5),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_e_mail".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansMedium12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.14))),
                                    BlocSelector<
                                            PasswordRemiderStepOneBloc,
                                            PasswordRemiderStepOneState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.emailoneController,
                                        builder: (context, emailoneController) {
                                          return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              autofocus: true,
                                              controller: emailoneController,
                                              hintText:
                                                  "msg_enter_your_e_mail".tr,
                                              margin: getMargin(top: 4),
                                              variant: TextFormFieldVariant
                                                  .OutlineGray100,
                                              shape: TextFormFieldShape
                                                  .RoundedBorder14,
                                              padding: TextFormFieldPadding
                                                  .PaddingT14,
                                              fontStyle: TextFormFieldFontStyle
                                                  .NotoSansRegular14,
                                              textInputAction:
                                                  TextInputAction.done,
                                              textInputType:
                                                  TextInputType.emailAddress,
                                              prefix: Container(
                                                  margin: getMargin(
                                                      left: 16,
                                                      top: 15,
                                                      right: 8,
                                                      bottom: 15),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheckmark)),
                                              prefixConstraints: BoxConstraints(
                                                  maxHeight:
                                                      getVerticalSize(48)),
                                              validator: (value) {
                                                if (value == null ||
                                                    (!isValidEmail(value,
                                                        isRequired: true))) {
                                                  return "Please enter valid email";
                                                }
                                                return null;
                                              });
                                        })
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
                      text: "lbl_confirm_e_mail".tr,
                      suffixWidget: Container(
                          margin: getMargin(left: 30),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowright)),
                      onTap: () {
                        onTapConfirmemail(context);
                      },
                      alignment: Alignment.topCenter)
                ]))));
  }

  onTapConfirmemail(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.passwordRemiderStepTwoScreen,
    );
  }
}
