import 'bloc/personal_data_e_mail_bloc.dart';
import 'models/personal_data_e_mail_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/core/utils/validation_functions.dart';
import 'package:medsync_project/widgets/custom_button.dart';
import 'package:medsync_project/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PersonalDataEMailScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<PersonalDataEMailBloc>(
        create: (context) => PersonalDataEMailBloc(PersonalDataEMailState(
            personalDataEMailModelObj: PersonalDataEMailModel()))
          ..add(PersonalDataEMailInitialEvent()),
        child: PersonalDataEMailScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 12, right: 24, bottom: 12),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: getHorizontalSize(234),
                              margin: getMargin(left: 38, top: 48, right: 38),
                              child: Text("msg_edit_your_e_mail".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtNotoSansBold30.copyWith(
                                      letterSpacing: getHorizontalSize(0.06)))),
                          Padding(
                              padding: getPadding(top: 24),
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
                                            PersonalDataEMailBloc,
                                            PersonalDataEMailState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.emailoneController,
                                        builder: (context, emailoneController) {
                                          return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              autofocus: true,
                                              controller: emailoneController,
                                              hintText:
                                                  "msg_m_johnson_gmail_com".tr,
                                              margin: getMargin(top: 4),
                                              variant: TextFormFieldVariant
                                                  .OutlineIndigoA100,
                                              shape: TextFormFieldShape
                                                  .RoundedBorder14,
                                              padding: TextFormFieldPadding
                                                  .PaddingT14,
                                              fontStyle: TextFormFieldFontStyle
                                                  .NotoSansRegular14Bluegray900,
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
                                  ])),
                          Spacer(),
                          Container(
                              height: getVerticalSize(64),
                              width: getHorizontalSize(312),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgBtnshadowIndigoA100,
                                        height: getVerticalSize(20),
                                        width: getHorizontalSize(240),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(10)),
                                        alignment: Alignment.bottomCenter),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            margin: getMargin(bottom: 8),
                                            padding: getPadding(
                                                left: 20,
                                                top: 15,
                                                right: 20,
                                                bottom: 15),
                                            decoration: AppDecoration
                                                .fillIndigoA200
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 54, top: 3),
                                                      child: Text(
                                                          "lbl_confirm_changes"
                                                              .tr,
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
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getSize(24),
                                                      width: getSize(24))
                                                ])))
                                  ]))
                        ]))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "lbl_cancel".tr,
                margin: getMargin(left: 24, right: 24, bottom: 40),
                variant: ButtonVariant.OutlineIndigoA200,
                fontStyle: ButtonFontStyle.NotoSansSemiBold16IndigoA200,
                suffixWidget: Container(
                    margin: getMargin(left: 30),
                    child: CustomImageView(
                        svgPath: ImageConstant.imgCloseIndigoA200)),
                onTap: () {
                  onTapCancel(context);
                })));
  }

  onTapCancel(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.personalDataOneScreen,
    );
  }
}
