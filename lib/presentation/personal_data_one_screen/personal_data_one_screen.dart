import '../personal_data_one_screen/widgets/list_item_widget.dart';
import 'bloc/personal_data_one_bloc.dart';
import 'models/list_item_model.dart';
import 'models/personal_data_one_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/app_bar/appbar_image.dart';
import 'package:medsync_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:medsync_project/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync_project/widgets/custom_button.dart';

class PersonalDataOneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<PersonalDataOneBloc>(
        create: (context) => PersonalDataOneBloc(PersonalDataOneState(
            personalDataOneModelObj: PersonalDataOneModel()))
          ..add(PersonalDataOneInitialEvent()),
        child: PersonalDataOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(288),
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomAppBar(
                                height: getVerticalSize(65),
                                leadingWidth: 48,
                                leading: AppbarImage(
                                    height: getSize(24),
                                    width: getSize(24),
                                    svgPath: ImageConstant.imgArrowleft,
                                    margin: getMargin(left: 24),
                                    onTap: () {
                                      onTapArrowleft9(context);
                                    }),
                                title: AppbarSubtitle(
                                    text: "lbl_personal_data".tr,
                                    margin: getMargin(left: 12))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: getPadding(
                                        left: 24,
                                        top: 39,
                                        right: 24,
                                        bottom: 39),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                fs.Svg(ImageConstant.imgGroup2),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 62),
                                              child: BlocSelector<
                                                      PersonalDataOneBloc,
                                                      PersonalDataOneState,
                                                      PersonalDataOneModel?>(
                                                  selector: (state) => state
                                                      .personalDataOneModelObj,
                                                  builder: (context,
                                                      personalDataOneModelObj) {
                                                    return ListView.separated(
                                                        physics:
                                                            NeverScrollableScrollPhysics(),
                                                        shrinkWrap: true,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      16));
                                                        },
                                                        itemCount:
                                                            personalDataOneModelObj
                                                                    ?.listItemList
                                                                    .length ??
                                                                0,
                                                        itemBuilder:
                                                            (context, index) {
                                                          ListItemModel model =
                                                              personalDataOneModelObj
                                                                          ?.listItemList[
                                                                      index] ??
                                                                  ListItemModel();
                                                          return ListItemWidget(
                                                              model,
                                                              onTapListwithlabels:
                                                                  () {
                                                            onTapListwithlabels(
                                                                context);
                                                          });
                                                        });
                                                  }))
                                        ])))
                          ])),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_change_password".tr,
                          margin: getMargin(
                              left: 24, top: 390, right: 24, bottom: 66),
                          variant: ButtonVariant.White,
                          fontStyle:
                              ButtonFontStyle.NotoSansSemiBold16IndigoA200,
                          suffixWidget: Container(
                              margin: getMargin(left: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgAirplane)),
                          onTap: () {
                            onTapChangepassword(context);
                          })
                    ]))));
  }

  onTapListwithlabels(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.personalDataNameScreen);
  }

  onTapArrowleft9(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapChangepassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.changePasswordScreen,
    );
  }
}
