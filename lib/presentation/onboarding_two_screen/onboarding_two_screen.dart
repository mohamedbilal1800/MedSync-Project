import 'bloc/onboarding_two_bloc.dart';
import 'models/onboarding_two_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/custom_button.dart';

class OnboardingTwoScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingTwoBloc>(
        create: (context) => OnboardingTwoBloc(
            OnboardingTwoState(onboardingTwoModelObj: OnboardingTwoModel()))
          ..add(OnboardingTwoInitialEvent()),
        child: OnboardingTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingTwoBloc, OnboardingTwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blue10001,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomButton(
                            height: getVerticalSize(32),
                            width: getHorizontalSize(90),
                            text: "lbl_skip_intro".tr,
                            variant: ButtonVariant.OutlineIndigoA200,
                            shape: ButtonShape.CircleBorder16,
                            padding: ButtonPadding.PaddingAll7,
                            fontStyle: ButtonFontStyle.NotoSansSemiBold12,
                            onTap: () {
                              onTapSkipintro(context);
                            },
                            alignment: Alignment.centerRight),
                        CustomImageView(
                            svgPath: ImageConstant.imgIlloWhiteA700,
                            height: getVerticalSize(299),
                            width: getHorizontalSize(198),
                            margin: getMargin(top: 38)),
                        Container(
                            width: getHorizontalSize(280),
                            margin: getMargin(left: 16, top: 40, right: 15),
                            child: Text("msg_don_t_miss_a_single".tr,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtNotoSansBold30.copyWith(
                                    letterSpacing: getHorizontalSize(0.06)))),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Text("msg_plan_your_supplementation".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNotoSansRegular16.copyWith(
                                    letterSpacing: getHorizontalSize(0.19)))),
                        Container(
                            height: getSize(88),
                            width: getSize(88),
                            margin: getMargin(top: 95),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgBtnshadow,
                                  height: getVerticalSize(20),
                                  width: getHorizontalSize(68),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(10)),
                                  alignment: Alignment.bottomCenter),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapBtn(context);
                                      },
                                      child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.indigoA200,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder20),
                                          child: Container(
                                              height: getSize(88),
                                              width: getSize(88),
                                              padding: getPadding(all: 24),
                                              decoration: AppDecoration
                                                  .fillIndigoA200
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder20),
                                              child: Stack(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height: getSize(40),
                                                    width: getSize(40),
                                                    alignment: Alignment.center)
                                              ])))))
                            ])),
                        CustomImageView(
                            svgPath: ImageConstant.imgStepspaginationGray100,
                            height: getVerticalSize(4),
                            width: getHorizontalSize(198),
                            margin: getMargin(top: 40))
                      ]))));
    });
  }

  onTapSkipintro(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }

  onTapBtn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingThreeScreen,
    );
  }
}
