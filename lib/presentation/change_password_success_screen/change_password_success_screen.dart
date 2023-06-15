import 'bloc/change_password_success_bloc.dart';
import 'models/change_password_success_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/custom_button.dart';

class ChangePasswordSuccessScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ChangePasswordSuccessBloc>(
        create: (context) => ChangePasswordSuccessBloc(
            ChangePasswordSuccessState(
                changePasswordSuccessModelObj: ChangePasswordSuccessModel()))
          ..add(ChangePasswordSuccessInitialEvent()),
        child: ChangePasswordSuccessScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangePasswordSuccessBloc, ChangePasswordSuccessState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blue10001,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 110),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgIllo,
                            height: getVerticalSize(260),
                            width: getHorizontalSize(161)),
                        Container(
                            width: getHorizontalSize(191),
                            margin: getMargin(top: 60, bottom: 5),
                            child: Text("msg_your_password_has_been".tr,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtNotoSansBold20.copyWith(
                                    letterSpacing: getHorizontalSize(0.24))))
                      ])),
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
                        text: "lbl_log_in".tr,
                        suffixWidget: Container(
                            margin: getMargin(left: 30),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowright)),
                        onTap: () {
                          onTapLogin(context);
                        },
                        alignment: Alignment.topCenter)
                  ]))));
    });
  }

  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginOneScreen,
    );
  }
}
