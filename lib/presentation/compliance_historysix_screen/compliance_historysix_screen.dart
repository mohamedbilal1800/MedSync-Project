import '../compliance_historysix_screen/widgets/listparacetamol3_item_widget.dart';
import 'bloc/compliance_historysix_bloc.dart';
import 'models/compliance_historysix_model.dart';
import 'models/listparacetamol3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/custom_button.dart';

class ComplianceHistorysixScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ComplianceHistorysixBloc>(
        create: (context) => ComplianceHistorysixBloc(ComplianceHistorysixState(
            complianceHistorysixModelObj: ComplianceHistorysixModel()))
          ..add(ComplianceHistorysixInitialEvent()),
        child: ComplianceHistorysixScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 29, right: 24, bottom: 29),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          width: getHorizontalSize(94),
                          text: "lbl_night".tr,
                          shape: ButtonShape.Square,
                          fontStyle: ButtonFontStyle.NotoSansBold20,
                          prefixWidget: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft)),
                          onTap: () {
                            onTapNight(context);
                          }),
                      Expanded(
                          child: Padding(
                              padding: getPadding(top: 46),
                              child: BlocSelector<
                                      ComplianceHistorysixBloc,
                                      ComplianceHistorysixState,
                                      ComplianceHistorysixModel?>(
                                  selector: (state) =>
                                      state.complianceHistorysixModelObj,
                                  builder:
                                      (context, complianceHistorysixModelObj) {
                                    return ListView.separated(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(60));
                                        },
                                        itemCount: complianceHistorysixModelObj
                                                ?.listparacetamol3ItemList
                                                .length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          Listparacetamol3ItemModel model =
                                              complianceHistorysixModelObj
                                                          ?.listparacetamol3ItemList[
                                                      index] ??
                                                  Listparacetamol3ItemModel();
                                          return Listparacetamol3ItemWidget(
                                              model);
                                        });
                                  })))
                    ]))));
  }

  onTapNight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.complianceHistorytwoScreen,
    );
  }
}
