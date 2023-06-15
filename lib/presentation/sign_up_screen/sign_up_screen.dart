import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/core/utils/validation_functions.dart';
import 'package:medsync_project/widgets/custom_button.dart';
import 'package:medsync_project/widgets/custom_icon_button.dart';
import 'package:medsync_project/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState(signUpModelObj: SignUpModel()))
              ..add(SignUpInitialEvent()),
        child: SignUpScreen());
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
                    padding:
                        getPadding(left: 24, top: 59, right: 24, bottom: 59),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 10),
                              child: Text("msg_create_an_account".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNotoSansBold30.copyWith(
                                      letterSpacing: getHorizontalSize(0.06)))),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_full_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansMedium12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.14))),
                                    BlocSelector<SignUpBloc, SignUpState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.nameController,
                                        builder: (context, nameController) {
                                          return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              autofocus: true,
                                              controller: nameController,
                                              hintText:
                                                  "lbl_enter_your_name".tr,
                                              margin: getMargin(top: 4),
                                              variant: TextFormFieldVariant
                                                  .OutlineGray100,
                                              shape: TextFormFieldShape
                                                  .RoundedBorder14,
                                              padding: TextFormFieldPadding
                                                  .PaddingT14,
                                              fontStyle: TextFormFieldFontStyle
                                                  .NotoSansRegular14,
                                              prefix: Container(
                                                  margin: getMargin(
                                                      left: 16,
                                                      top: 15,
                                                      right: 8,
                                                      bottom: 15),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgUser)),
                                              prefixConstraints: BoxConstraints(
                                                  maxHeight:
                                                      getVerticalSize(48)),
                                              validator: (value) {
                                                if (!isText(value)) {
                                                  return "Please enter valid text";
                                                }
                                                return null;
                                              });
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
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
                                    BlocSelector<SignUpBloc, SignUpState,
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
                          Padding(
                              padding: getPadding(top: 13),
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
                                    BlocBuilder<SignUpBloc, SignUpState>(
                                        builder: (context, state) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          autofocus: true,
                                          controller:
                                              state.passwordoneController,
                                          hintText: "msg_place_the_password".tr,
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
                                                context.read<SignUpBloc>().add(
                                                    ChangePasswordVisibilityEvent(
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
                              padding: getPadding(top: 9),
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
                              padding: getPadding(top: 8),
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
                              ])),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.indigo50)),
                          Padding(
                              padding: getPadding(top: 20, right: 8),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(top: 2, bottom: 15),
                                        color: ColorConstant.whiteA700,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color:
                                                    ColorConstant.blueGray400,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder3),
                                        child: Container(
                                            height: getSize(16),
                                            width: getSize(16),
                                            padding: getPadding(
                                                left: 2,
                                                top: 5,
                                                right: 2,
                                                bottom: 5),
                                            decoration: AppDecoration
                                                .outlineBluegray400
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder3),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVector,
                                                  height: getVerticalSize(5),
                                                  width: getHorizontalSize(9),
                                                  alignment:
                                                      Alignment.centerRight)
                                            ]))),
                                    Expanded(
                                        child: Container(
                                            width: getHorizontalSize(279),
                                            margin: getMargin(left: 8),
                                            child: Text(
                                                "msg_by_continuing_you".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtNotoSansMedium12
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.14)))))
                                  ])),
                          Container(
                              height: getVerticalSize(58),
                              width: getHorizontalSize(312),
                              margin: getMargin(top: 20),
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
                                    CustomButton(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(312),
                                        text: "lbl_sign_up2".tr,
                                        suffixWidget: Container(
                                            margin: getMargin(left: 30),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowright)),
                                        onTap: () {
                                          onTapSignup(context);
                                        },
                                        alignment: Alignment.topCenter)
                                  ])),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 9, bottom: 6),
                                        child: SizedBox(
                                            width: getHorizontalSize(141),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color:
                                                    ColorConstant.indigo50))),
                                    Text("lbl_or".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtNotoSansMedium12Bluegray900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.14))),
                                    Padding(
                                        padding: getPadding(top: 9, bottom: 6),
                                        child: SizedBox(
                                            width: getHorizontalSize(140),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.indigo50)))
                                  ])),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 19),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomIconButton(
                                            height: 50,
                                            width: 50,
                                            variant: IconButtonVariant
                                                .OutlineIndigo50,
                                            shape:
                                                IconButtonShape.RoundedBorder14,
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgIcongsuite)),
                                        CustomIconButton(
                                            height: 50,
                                            width: 50,
                                            margin: getMargin(left: 32),
                                            variant: IconButtonVariant
                                                .OutlineIndigo50,
                                            shape:
                                                IconButtonShape.RoundedBorder14,
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFacebook1))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtAlreadyhavean(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 22, bottom: 9),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "msg_already_have_an2".tr,
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .blueGray900,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.14))),
                                            TextSpan(
                                                text: "lbl_login2".tr,
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .indigoA200,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.14)))
                                          ]),
                                          textAlign: TextAlign.left))))
                        ])))));
  }

  onTapSignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginTwoScreen,
    );
  }

  onTapTxtAlreadyhavean(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginOneScreen,
    );
  }
}
