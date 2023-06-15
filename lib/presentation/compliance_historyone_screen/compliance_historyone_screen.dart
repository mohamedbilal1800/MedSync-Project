import '../compliance_historyone_screen/widgets/listsun_item_widget.dart';
import 'bloc/compliance_historyone_bloc.dart';
import 'models/compliance_historyone_model.dart';
import 'models/listsun_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/custom_button.dart';

class ComplianceHistoryoneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ComplianceHistoryoneBloc>(
        create: (context) => ComplianceHistoryoneBloc(ComplianceHistoryoneState(
            complianceHistoryoneModelObj: ComplianceHistoryoneModel()))
          ..add(ComplianceHistoryoneInitialEvent()),
        child: ComplianceHistoryoneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 23, bottom: 23),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          width: getHorizontalSize(193),
                          text: "msg_compliance_history".tr,
                          margin: getMargin(left: 24, top: 7),
                          shape: ButtonShape.Square,
                          padding: ButtonPadding.PaddingT1,
                          fontStyle: ButtonFontStyle.NotoSansBold16,
                          prefixWidget: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft)),
                          onTap: () {
                            onTapCompliance(context);
                          }),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 10, top: 20, right: 10, bottom: 20),
                              decoration: AppDecoration.white.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: getMargin(left: 19, right: 19),
                                        padding: getPadding(top: 9, bottom: 9),
                                        decoration: AppDecoration.white,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(57),
                                                  margin: getMargin(left: 30),
                                                  child: Text("lbl_jan_2023".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtAliceRegular28)),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleftDeepOrangeA200,
                                                  height: getSize(36),
                                                  width: getSize(36),
                                                  margin: getMargin(
                                                      top: 14, bottom: 14)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgFrame37,
                                                  height: getVerticalSize(36),
                                                  width: getHorizontalSize(46),
                                                  margin: getMargin(
                                                      left: 10,
                                                      top: 14,
                                                      bottom: 14))
                                            ])),
                                    Expanded(
                                        child: Container(
                                            height: getVerticalSize(597),
                                            child: BlocSelector<
                                                    ComplianceHistoryoneBloc,
                                                    ComplianceHistoryoneState,
                                                    ComplianceHistoryoneModel?>(
                                                selector: (state) => state
                                                    .complianceHistoryoneModelObj,
                                                builder: (context,
                                                    complianceHistoryoneModelObj) {
                                                  return ListView.separated(
                                                      padding: getPadding(
                                                          top: 126, bottom: 14),
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    16));
                                                      },
                                                      itemCount:
                                                          complianceHistoryoneModelObj
                                                                  ?.listsunItemList
                                                                  .length ??
                                                              0,
                                                      itemBuilder:
                                                          (context, index) {
                                                        ListsunItemModel model =
                                                            complianceHistoryoneModelObj
                                                                        ?.listsunItemList[
                                                                    index] ??
                                                                ListsunItemModel();
                                                        return ListsunItemWidget(
                                                            model);
                                                      });
                                                })))
                                  ])))
                    ]))));
  }

  onTapCompliance(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
