import '../compliance_historytwo_screen/widgets/listcut_item_widget.dart';
import 'bloc/compliance_historytwo_bloc.dart';
import 'models/compliance_historytwo_model.dart';
import 'models/listcut_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/custom_button.dart';

class ComplianceHistorytwoScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ComplianceHistorytwoBloc>(
        create: (context) => ComplianceHistorytwoBloc(ComplianceHistorytwoState(
            complianceHistorytwoModelObj: ComplianceHistorytwoModel()))
          ..add(ComplianceHistorytwoInitialEvent()),
        child: ComplianceHistorytwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 33),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomButton(
                                    width: getHorizontalSize(74),
                                    text: "lbl_date".tr,
                                    margin: getMargin(left: 19),
                                    shape: ButtonShape.Square,
                                    padding: ButtonPadding.PaddingT1,
                                    fontStyle: ButtonFontStyle.NotoSansBold16,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 12),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowleft)),
                                    onTap: () {
                                      onTapDate(context);
                                    }),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        width: double.maxFinite,
                                        margin: getMargin(top: 19),
                                        padding: getPadding(
                                            left: 20,
                                            top: 9,
                                            right: 20,
                                            bottom: 9),
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(310),
                                                  decoration: AppDecoration
                                                      .txtFillBlack90019,
                                                  child: Text(
                                                      "msg_05_jan_2023_wednesday"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtArapeyRegular28))
                                            ]))),
                                Expanded(
                                    child: Container(
                                        margin: getMargin(top: 116),
                                        padding: getPadding(
                                            left: 22,
                                            top: 73,
                                            right: 22,
                                            bottom: 73),
                                        decoration: AppDecoration
                                            .outlineBlack90029
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL46),
                                        child: BlocSelector<
                                                ComplianceHistorytwoBloc,
                                                ComplianceHistorytwoState,
                                                ComplianceHistorytwoModel?>(
                                            selector: (state) => state
                                                .complianceHistorytwoModelObj,
                                            builder: (context,
                                                complianceHistorytwoModelObj) {
                                              return ListView.separated(
                                                  physics:
                                                      BouncingScrollPhysics(),
                                                  shrinkWrap: true,
                                                  separatorBuilder:
                                                      (context, index) {
                                                    return SizedBox(
                                                        height: getVerticalSize(
                                                            37));
                                                  },
                                                  itemCount:
                                                      complianceHistorytwoModelObj
                                                              ?.listcutItemList
                                                              .length ??
                                                          0,
                                                  itemBuilder:
                                                      (context, index) {
                                                    ListcutItemModel model =
                                                        complianceHistorytwoModelObj
                                                                    ?.listcutItemList[
                                                                index] ??
                                                            ListcutItemModel();
                                                    return ListcutItemWidget(
                                                        model,
                                                        onTapImgImagesix: () {
                                                      onTapImgImagesix(context);
                                                    });
                                                  });
                                            })))
                              ]))
                    ]))));
  }

  onTapImgImagesix(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.complianceHistorythreeScreen);
  }

  onTapDate(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.complianceHistoryoneScreen,
    );
  }
}
