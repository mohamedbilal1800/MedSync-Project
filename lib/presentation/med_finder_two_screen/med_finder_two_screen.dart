import 'bloc/med_finder_two_bloc.dart';
import 'models/med_finder_two_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/app_bar/appbar_image.dart';
import 'package:medsync_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:medsync_project/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync_project/widgets/custom_text_form_field.dart';

class MedFinderTwoScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<MedFinderTwoBloc>(
        create: (context) => MedFinderTwoBloc(
            MedFinderTwoState(medFinderTwoModelObj: MedFinderTwoModel()))
          ..add(MedFinderTwoInitialEvent()),
        child: MedFinderTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue100,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft6(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_med_finder_results".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(19),
                      svgPath: ImageConstant.imgHome,
                      margin:
                          getMargin(left: 20, top: 19, right: 20, bottom: 16),
                      onTap: () {
                        onTapHome6(context);
                      })
                ]),
            body: BlocSelector<MedFinderTwoBloc, MedFinderTwoState,
                    TextEditingController?>(
                selector: (state) => state.descriptionController,
                builder: (context, descriptionController) {
                  return CustomTextFormField(
                      focusNode: FocusNode(),
                      autofocus: true,
                      controller: descriptionController,
                      hintText: "msg_results_will_be".tr,
                      margin:
                          getMargin(left: 20, top: 26, right: 18, bottom: 577),
                      variant: TextFormFieldVariant.OutlineRed600,
                      shape: TextFormFieldShape.RoundedBorder6,
                      padding: TextFormFieldPadding.PaddingT43,
                      fontStyle: TextFormFieldFontStyle.InterRegular14,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                          margin:
                              getMargin(left: 30, top: 30, right: 2, bottom: 2),
                          child:
                              CustomImageView(svgPath: ImageConstant.imgSend)),
                      suffixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(103)),
                      maxLines: 5);
                })));
  }

  onTapArrowleft6(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapHome6(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
