import 'bloc/login_one_bloc.dart';
import 'models/login_one_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/core/utils/validation_functions.dart';
import 'package:medsync_project/widgets/custom_button.dart';
import 'package:medsync_project/widgets/custom_icon_button.dart';
import 'package:medsync_project/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginOneScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginOneBloc>(
        create: (context) =>
            LoginOneBloc(LoginOneState(loginOneModelObj: LoginOneModel()))
              ..add(LoginOneInitialEvent()),
        child: LoginOneScreen());
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
                        getPadding(left: 22, top: 38, right: 22, bottom: 38),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 42, top: 20),
                                  child: Text("lbl_welcome_back".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtNotoSansBold30
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06))))),
                          Padding(
                              padding: getPadding(left: 2, top: 19, right: 2),
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
                                    BlocSelector<LoginOneBloc, LoginOneState,
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
                              padding: getPadding(left: 2, top: 21, right: 2),
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
                                    BlocBuilder<LoginOneBloc, LoginOneState>(
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
                                                context.read<LoginOneBloc>().add(
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
                          GestureDetector(
                              onTap: () {
                                onTapTxtForgotyourpassw(context);
                              },
                              child: Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("msg_forgot_your_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtNotoSansMedium12IndigoA200
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.14))))),
                          Spacer(),
                          Container(
                              height: getVerticalSize(60),
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
                                    CustomButton(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(312),
                                        text: "lbl_log_in".tr,
                                        suffixWidget: Container(
                                            margin: getMargin(left: 30),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowright)),
                                        onTap: () {
                                          onTapLogin(context);
                                        },
                                        alignment: Alignment.topCenter)
                                  ])),
                          Padding(
                              padding: getPadding(top: 17, right: 1),
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
                          Padding(
                              padding: getPadding(top: 19),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                        height: 50,
                                        width: 50,
                                        variant:
                                            IconButtonVariant.OutlineIndigo50,
                                        shape: IconButtonShape.RoundedBorder14,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgIcongsuite)),
                                    CustomIconButton(
                                        height: 50,
                                        width: 50,
                                        margin: getMargin(left: 32),
                                        variant:
                                            IconButtonVariant.OutlineIndigo50,
                                        shape: IconButtonShape.RoundedBorder14,
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgFacebook1))
                                  ])),
                          Padding(
                              padding: getPadding(top: 22),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_don_t_have_an_account2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.blueGray900,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing:
                                                getHorizontalSize(0.14))),
                                    TextSpan(
                                        text: "lbl_sign_up".tr,
                                        style: TextStyle(
                                            color: ColorConstant.indigoA200,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing:
                                                getHorizontalSize(0.14)))
                                  ]),
                                  textAlign: TextAlign.left))
                        ])))));
  }

  onTapTxtForgotyourpassw(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.passwordRemiderStepOneScreen,
    );
  }

  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
