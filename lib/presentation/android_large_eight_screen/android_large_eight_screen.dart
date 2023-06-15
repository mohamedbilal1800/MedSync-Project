import 'bloc/android_large_eight_bloc.dart';
import 'models/android_large_eight_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/app_bar/appbar_image.dart';
import 'package:medsync_project/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync_project/widgets/custom_text_form_field.dart';

class AndroidLargeEightScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeEightBloc>(
        create: (context) => AndroidLargeEightBloc(AndroidLargeEightState(
            androidLargeEightModelObj: AndroidLargeEightModel()))
          ..add(AndroidLargeEightInitialEvent()),
        child: AndroidLargeEightScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue100,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(74),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(19),
                      svgPath: ImageConstant.imgHome,
                      margin:
                          getMargin(left: 32, top: 15, right: 32, bottom: 20),
                      onTap: () {
                        onTapHome2(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 10, right: 24, bottom: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_complete_history2".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNotoSansBold30Black900.copyWith(
                              letterSpacing: getHorizontalSize(0.06))),
                      BlocSelector<AndroidLargeEightBloc,
                              AndroidLargeEightState, TextEditingController?>(
                          selector: (state) => state.medicinesController,
                          builder: (context, medicinesController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: medicinesController,
                                hintText: "lbl_medicine_s".tr,
                                margin: getMargin(top: 29));
                          }),
                      BlocSelector<AndroidLargeEightBloc,
                              AndroidLargeEightState, TextEditingController?>(
                          selector: (state) => state.documentsController,
                          builder: (context, documentsController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: documentsController,
                                hintText: "lbl_document_s".tr,
                                margin: getMargin(top: 11));
                          }),
                      BlocSelector<AndroidLargeEightBloc,
                              AndroidLargeEightState, TextEditingController?>(
                          selector: (state) => state.photosController,
                          builder: (context, photosController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: photosController,
                                hintText: "lbl_photo_s".tr,
                                margin: getMargin(top: 11, bottom: 5),
                                textInputAction: TextInputAction.done);
                          })
                    ]))));
  }

  onTapArrowleft2(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapHome2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
