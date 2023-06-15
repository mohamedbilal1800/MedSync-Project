import 'bloc/welcome_screen_spacing_bloc.dart';
import 'models/welcome_screen_spacing_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/custom_button.dart';

class WelcomeScreenSpacingScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeScreenSpacingBloc>(
        create: (context) => WelcomeScreenSpacingBloc(WelcomeScreenSpacingState(
            welcomeScreenSpacingModelObj: WelcomeScreenSpacingModel()))
          ..add(WelcomeScreenSpacingInitialEvent()),
        child: WelcomeScreenSpacingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeScreenSpacingBloc, WelcomeScreenSpacingState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blue100,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 25, bottom: 25),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Spacer(),
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                width: double.maxFinite,
                                padding: getPadding(
                                    left: 22, top: 35, right: 22, bottom: 35),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: fs.Svg(ImageConstant.imgGroup19),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgLogoblackremovebg,
                                          height: getVerticalSize(60),
                                          width: getHorizontalSize(300))
                                    ]))),
                        CustomButton(
                            height: getVerticalSize(56),
                            text: "lbl_let_s_start".tr,
                            margin: getMargin(left: 24, top: 233, right: 24),
                            suffixWidget: Container(
                                margin: getMargin(left: 30),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgArrowright)),
                            onTap: () {
                              onTapLetsstart(context);
                            },
                            alignment: Alignment.center),
                        CustomImageView(
                            svgPath: ImageConstant.imgBtnshadowIndigoA100,
                            height: getVerticalSize(20),
                            width: getHorizontalSize(240),
                            radius:
                                BorderRadius.circular(getHorizontalSize(10)),
                            margin: getMargin(left: 52))
                      ]))));
    });
  }

  onTapLetsstart(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingOneScreen,
    );
  }
}
