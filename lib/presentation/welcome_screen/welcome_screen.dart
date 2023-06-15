import 'bloc/welcome_bloc.dart';
import 'models/welcome_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';

class WelcomeScreen extends StatefulWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeBloc>(
        create: (context) =>
            WelcomeBloc(WelcomeState(welcomeModelObj: WelcomeModel()))
              ..add(WelcomeInitialEvent()),
        child: WelcomeScreen());
  }

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeBloc, WelcomeState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 30, right: 30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgLogoblackremovebg,
                            height: getVerticalSize(60),
                            width: getHorizontalSize(300))
                      ]))));
    });
  }
}
