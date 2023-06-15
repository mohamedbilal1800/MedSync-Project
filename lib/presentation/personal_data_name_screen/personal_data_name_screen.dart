import 'bloc/personal_data_name_bloc.dart';
import 'models/personal_data_name_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/custom_button.dart';
import 'package:medsync_project/widgets/custom_text_form_field.dart';

class PersonalDataNameScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<PersonalDataNameBloc>(
        create: (context) => PersonalDataNameBloc(PersonalDataNameState(
            personalDataNameModelObj: PersonalDataNameModel()))
          ..add(PersonalDataNameInitialEvent()),
        child: PersonalDataNameScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 12, right: 24, bottom: 12),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 47),
                          child: Text("msg_edit_your_full_name".tr,
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
                                BlocSelector<
                                        PersonalDataNameBloc,
                                        PersonalDataNameState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.namevalueController,
                                    builder: (context, namevalueController) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          autofocus: true,
                                          controller: namevalueController,
                                          hintText: "lbl_madison_johnson".tr,
                                          margin: getMargin(top: 4),
                                          variant: TextFormFieldVariant
                                              .OutlineIndigoA100,
                                          shape: TextFormFieldShape
                                              .RoundedBorder14,
                                          padding:
                                              TextFormFieldPadding.PaddingT14,
                                          fontStyle: TextFormFieldFontStyle
                                              .NotoSansRegular14Bluegray900,
                                          textInputAction: TextInputAction.done,
                                          prefix: Container(
                                              margin: getMargin(
                                                  left: 16,
                                                  top: 15,
                                                  right: 8,
                                                  bottom: 15),
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgUser)),
                                          prefixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(48)));
                                    })
                              ])),
                      Spacer(),
                      Container(
                          height: getVerticalSize(64),
                          width: getHorizontalSize(312),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgBtnshadowIndigoA100,
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
                                    decoration: AppDecoration.fillIndigoA200
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(left: 54, top: 3),
                                              child: Text(
                                                  "lbl_confirm_changes".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtNotoSansSemiBold16
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.19)))),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright,
                                              height: getSize(24),
                                              width: getSize(24))
                                        ])))
                          ]))
                    ])),
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
