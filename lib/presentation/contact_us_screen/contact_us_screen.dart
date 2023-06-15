import 'bloc/contact_us_bloc.dart';
import 'models/contact_us_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/app_bar/appbar_image.dart';
import 'package:medsync_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:medsync_project/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync_project/widgets/custom_checkbox.dart';

class ContactUsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ContactUsBloc>(
        create: (context) =>
            ContactUsBloc(ContactUsState(contactUsModelObj: ContactUsModel()))
              ..add(ContactUsInitialEvent()),
        child: ContactUsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue100,
            appBar: CustomAppBar(
                height: getVerticalSize(65),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleft14(context);
                    }),
                title: AppbarSubtitle(
                    text: "lbl_contact_us".tr, margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(19),
                          width: double.maxFinite,
                          decoration:
                              BoxDecoration(color: ColorConstant.blue9007e)),
                      Padding(
                          padding: getPadding(left: 24),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgGoogle,
                                height: getSize(40),
                                width: getSize(40)),
                            Padding(
                                padding:
                                    getPadding(left: 12, top: 8, bottom: 3),
                                child: Text("lbl_medsync".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtNotoSansBold20.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.24))))
                          ])),
                      Container(
                          height: getVerticalSize(12),
                          width: double.maxFinite,
                          decoration:
                              BoxDecoration(color: ColorConstant.blue9007e)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding:
                                  getPadding(left: 24, right: 24, bottom: 5),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            decoration: AppDecoration.white,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 21),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCall,
                                                            height: getSize(18),
                                                            width: getSize(18),
                                                            margin: getMargin(
                                                                top: 1,
                                                                bottom: 2)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 20),
                                                            child: Text(
                                                                "lbl_91_96722_55134"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtNotoSansBold16Bluegray700
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.19))))
                                                      ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 20),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .indigo50))
                                                ]))),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            decoration: AppDecoration.white,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  BlocSelector<
                                                          ContactUsBloc,
                                                          ContactUsState,
                                                          bool?>(
                                                      selector: (state) =>
                                                          state.isCheckbox,
                                                      builder: (context,
                                                          isCheckbox) {
                                                        return CustomCheckbox(
                                                            text:
                                                                "msg_contact_medsync_com"
                                                                    .tr,
                                                            value: isCheckbox,
                                                            margin: getMargin(
                                                                top: 22,
                                                                right: 86),
                                                            fontStyle:
                                                                CheckboxFontStyle
                                                                    .NotoSansBold16,
                                                            onChange: (value) {
                                                              context
                                                                  .read<
                                                                      ContactUsBloc>()
                                                                  .add(ChangeCheckBoxEvent(
                                                                      value:
                                                                          value));
                                                            });
                                                      }),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 19),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .indigo50))
                                                ]))),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            decoration: AppDecoration.white,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 21, right: 78),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgLocationBlueGray400,
                                                                height:
                                                                    getSize(18),
                                                                width:
                                                                    getSize(18),
                                                                margin:
                                                                    getMargin(
                                                                        top: 2,
                                                                        bottom:
                                                                            78)),
                                                            Expanded(
                                                                child: Container(
                                                                    width: getHorizontalSize(195),
                                                                    margin: getMargin(left: 20),
                                                                    child: RichText(
                                                                        text: TextSpan(children: [
                                                                          TextSpan(
                                                                              text: "lbl_medsync_corp".tr,
                                                                              style: TextStyle(color: ColorConstant.blueGray700, fontSize: getFontSize(16), fontFamily: 'Noto Sans', fontWeight: FontWeight.w700, letterSpacing: getHorizontalSize(0.19))),
                                                                          TextSpan(
                                                                              text: "msg_1277_saige_point".tr,
                                                                              style: TextStyle(color: ColorConstant.blueGray400, fontSize: getFontSize(16), fontFamily: 'Noto Sans', fontWeight: FontWeight.w400, letterSpacing: getHorizontalSize(0.19)))
                                                                        ]),
                                                                        textAlign: TextAlign.left)))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 21),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .indigo50))
                                                ])))
                                  ])))
                    ]))));
  }

  onTapArrowleft14(BuildContext context) {
    NavigatorService.goBack();
  }
}
