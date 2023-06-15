import 'bloc/profile_edit_form_bloc.dart';
import 'models/profile_edit_form_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/core/utils/validation_functions.dart';
import 'package:medsync_project/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileEditFormScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileEditFormBloc>(
        create: (context) => ProfileEditFormBloc(ProfileEditFormState(
            profileEditFormModelObj: ProfileEditFormModel()))
          ..add(ProfileEditFormInitialEvent()),
        child: ProfileEditFormScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray90001,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Padding(
                                      padding: getPadding(bottom: 22),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                width: getHorizontalSize(344),
                                                margin: getMargin(right: 16),
                                                padding: getPadding(
                                                    left: 26,
                                                    top: 3,
                                                    right: 26,
                                                    bottom: 3),
                                                decoration:
                                                    AppDecoration.fillGray90001,
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowback,
                                                          height:
                                                              getVerticalSize(
                                                                  41),
                                                          width:
                                                              getHorizontalSize(
                                                                  46),
                                                          margin: getMargin(
                                                              top: 39)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 4, top: 14),
                                                          child: Text(
                                                              "lbl_edit".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtIBMPlexMonoBold35))
                                                    ])),
                                            Container(
                                                margin: getMargin(right: 16),
                                                padding: getPadding(
                                                    top: 15, bottom: 15),
                                                decoration:
                                                    AppDecoration.fillGray90001,
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 31,
                                                                      right:
                                                                          21),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgImagecomponentinputimage,
                                                                        height: getSize(
                                                                            115),
                                                                        width: getSize(
                                                                            115),
                                                                        radius:
                                                                            BorderRadius.circular(getHorizontalSize(57))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                20,
                                                                            top:
                                                                                46,
                                                                            bottom:
                                                                                42),
                                                                        child: Text(
                                                                            "lbl_profile_image"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtIBMPlexMonoSemiBold20))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 31,
                                                                      top: 29),
                                                              child: Text(
                                                                  "lbl_name".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtIBMPlexMonoMedium12Bluegray800))),
                                                      BlocSelector<
                                                              ProfileEditFormBloc,
                                                              ProfileEditFormState,
                                                              TextEditingController?>(
                                                          selector: (state) => state
                                                              .fullnameController,
                                                          builder: (context,
                                                              fullnameController) {
                                                            return CustomTextFormField(
                                                                focusNode:
                                                                    FocusNode(),
                                                                autofocus: true,
                                                                controller:
                                                                    fullnameController,
                                                                hintText:
                                                                    "lbl_first_last"
                                                                        .tr,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            31,
                                                                        top: 6),
                                                                variant:
                                                                    TextFormFieldVariant
                                                                        .FillBluegray90001,
                                                                shape: TextFormFieldShape
                                                                    .RoundedBorder10,
                                                                padding:
                                                                    TextFormFieldPadding
                                                                        .PaddingAll14,
                                                                fontStyle:
                                                                    TextFormFieldFontStyle
                                                                        .IBMPlexMonoMedium20);
                                                          }),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 31,
                                                                      top: 19),
                                                              child: Text(
                                                                  "lbl_email2"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtIBMPlexMonoMedium12Bluegray800))),
                                                      BlocSelector<
                                                              ProfileEditFormBloc,
                                                              ProfileEditFormState,
                                                              TextEditingController?>(
                                                          selector: (state) => state
                                                              .emailoneController,
                                                          builder: (context,
                                                              emailoneController) {
                                                            return CustomTextFormField(
                                                                focusNode:
                                                                    FocusNode(),
                                                                autofocus: true,
                                                                controller:
                                                                    emailoneController,
                                                                hintText:
                                                                    "lbl_name_email_com"
                                                                        .tr,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            31,
                                                                        top: 6),
                                                                variant: TextFormFieldVariant
                                                                    .FillBluegray90001,
                                                                shape: TextFormFieldShape
                                                                    .RoundedBorder10,
                                                                padding:
                                                                    TextFormFieldPadding
                                                                        .PaddingAll14,
                                                                fontStyle:
                                                                    TextFormFieldFontStyle
                                                                        .IBMPlexMonoMedium20WhiteA700,
                                                                textInputType:
                                                                    TextInputType
                                                                        .emailAddress,
                                                                validator:
                                                                    (value) {
                                                                  if (value ==
                                                                          null ||
                                                                      (!isValidEmail(
                                                                          value,
                                                                          isRequired:
                                                                              true))) {
                                                                    return "Please enter valid email";
                                                                  }
                                                                  return null;
                                                                });
                                                          }),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 31,
                                                                      top: 19),
                                                              child: Text(
                                                                  "lbl_job".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtIBMPlexMonoMedium12))),
                                                      BlocSelector<
                                                              ProfileEditFormBloc,
                                                              ProfileEditFormState,
                                                              TextEditingController?>(
                                                          selector: (state) => state
                                                              .languageController,
                                                          builder: (context,
                                                              languageController) {
                                                            return CustomTextFormField(
                                                                focusNode:
                                                                    FocusNode(),
                                                                autofocus: true,
                                                                controller:
                                                                    languageController,
                                                                hintText:
                                                                    "lbl".tr,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            31,
                                                                        top: 6),
                                                                variant:
                                                                    TextFormFieldVariant
                                                                        .FillBluegray90001,
                                                                shape: TextFormFieldShape
                                                                    .RoundedBorder10,
                                                                padding:
                                                                    TextFormFieldPadding
                                                                        .PaddingAll14,
                                                                fontStyle:
                                                                    TextFormFieldFontStyle
                                                                        .IBMPlexMonoMedium20WhiteA700);
                                                          }),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 31,
                                                                      top: 19),
                                                              child: Text(
                                                                  "lbl_phone"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtIBMPlexMonoMedium12Bluegray800))),
                                                      BlocSelector<
                                                              ProfileEditFormBloc,
                                                              ProfileEditFormState,
                                                              TextEditingController?>(
                                                          selector: (state) => state
                                                              .phoneoneController,
                                                          builder: (context,
                                                              phoneoneController) {
                                                            return CustomTextFormField(
                                                                focusNode:
                                                                    FocusNode(),
                                                                autofocus: true,
                                                                controller:
                                                                    phoneoneController,
                                                                hintText:
                                                                    "lbl_00000_00000"
                                                                        .tr,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            31,
                                                                        top: 6),
                                                                variant:
                                                                    TextFormFieldVariant
                                                                        .FillBluegray90001,
                                                                shape: TextFormFieldShape
                                                                    .RoundedBorder10,
                                                                padding:
                                                                    TextFormFieldPadding
                                                                        .PaddingAll14,
                                                                fontStyle:
                                                                    TextFormFieldFontStyle
                                                                        .IBMPlexMonoMedium20WhiteA700);
                                                          }),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 31,
                                                                      top: 19),
                                                              child: Text(
                                                                  "lbl_date_of_birth2"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtIBMPlexMonoMedium12Bluegray800))),
                                                      BlocSelector<
                                                              ProfileEditFormBloc,
                                                              ProfileEditFormState,
                                                              TextEditingController?>(
                                                          selector: (state) => state
                                                              .dateofbirthoneController,
                                                          builder: (context,
                                                              dateofbirthoneController) {
                                                            return CustomTextFormField(
                                                                focusNode:
                                                                    FocusNode(),
                                                                autofocus: true,
                                                                controller:
                                                                    dateofbirthoneController,
                                                                hintText:
                                                                    "lbl_dd_mm_yy"
                                                                        .tr,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            31,
                                                                        top: 6),
                                                                variant:
                                                                    TextFormFieldVariant
                                                                        .FillBluegray90001,
                                                                shape: TextFormFieldShape
                                                                    .RoundedBorder10,
                                                                padding:
                                                                    TextFormFieldPadding
                                                                        .PaddingAll14,
                                                                fontStyle:
                                                                    TextFormFieldFontStyle
                                                                        .IBMPlexMonoMedium20WhiteA700);
                                                          }),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 31,
                                                                      top: 21),
                                                              child: Text(
                                                                  "lbl_age".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtIBMPlexMonoMedium12))),
                                                      BlocSelector<
                                                              ProfileEditFormBloc,
                                                              ProfileEditFormState,
                                                              TextEditingController?>(
                                                          selector: (state) => state
                                                              .ageoneController,
                                                          builder: (context,
                                                              ageoneController) {
                                                            return CustomTextFormField(
                                                                focusNode:
                                                                    FocusNode(),
                                                                autofocus: true,
                                                                controller:
                                                                    ageoneController,
                                                                hintText:
                                                                    "lbl_0".tr,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            31,
                                                                        top: 4),
                                                                variant:
                                                                    TextFormFieldVariant
                                                                        .FillBluegray90001,
                                                                shape: TextFormFieldShape
                                                                    .RoundedBorder10,
                                                                padding:
                                                                    TextFormFieldPadding
                                                                        .PaddingAll14,
                                                                fontStyle:
                                                                    TextFormFieldFontStyle
                                                                        .IBMPlexMonoMedium20WhiteA700,
                                                                textInputAction:
                                                                    TextInputAction
                                                                        .done);
                                                          }),
                                                      SingleChildScrollView(
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          padding: getPadding(
                                                              left: 31,
                                                              top: 42,
                                                              bottom: 58),
                                                          child: IntrinsicWidth(
                                                              child: GestureDetector(
                                                                  onTap: () {
                                                                    onTapButtonedit(
                                                                        context);
                                                                  },
                                                                  child: Container(
                                                                      height: getVerticalSize(63),
                                                                      width: getHorizontalSize(313),
                                                                      child: Stack(alignment: Alignment.center, children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgRectangle10actionsubmit,
                                                                            height: getVerticalSize(63),
                                                                            width: getHorizontalSize(329),
                                                                            alignment: Alignment.centerRight),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            child: Text("lbl_save".tr,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtIBMPlexMonoBold20))
                                                                      ])))))
                                                    ]))
                                          ]))))
                        ])))));
  }

  onTapButtonedit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileOneScreen,
    );
  }
}
