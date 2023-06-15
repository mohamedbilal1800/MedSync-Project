import '../compliance_historyfour_screen/widgets/listparacetamol1_item_widget.dart';
import 'bloc/compliance_historyfour_bloc.dart';
import 'models/compliance_historyfour_model.dart';
import 'models/listparacetamol1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/custom_button.dart';

class ComplianceHistoryfourScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ComplianceHistoryfourBloc>(
        create: (context) => ComplianceHistoryfourBloc(
            ComplianceHistoryfourState(
                complianceHistoryfourModelObj: ComplianceHistoryfourModel()))
          ..add(ComplianceHistoryfourInitialEvent()),
        child: ComplianceHistoryfourScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 27, right: 24, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          width: getHorizontalSize(90),
                          text: "lbl_noon".tr,
                          shape: ButtonShape.Square,
                          fontStyle: ButtonFontStyle.NotoSansBold20,
                          prefixWidget: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft)),
                          onTap: () {
                            onTapNoon(context);
                          }),
                      Expanded(
                          child: Padding(
                              padding: getPadding(top: 48),
                              child: BlocSelector<
                                      ComplianceHistoryfourBloc,
                                      ComplianceHistoryfourState,
                                      ComplianceHistoryfourModel?>(
                                  selector: (state) =>
                                      state.complianceHistoryfourModelObj,
                                  builder:
                                      (context, complianceHistoryfourModelObj) {
                                    return ListView.separated(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(60));
                                        },
                                        itemCount: complianceHistoryfourModelObj
                                                ?.listparacetamol1ItemList
                                                .length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          Listparacetamol1ItemModel model =
                                              complianceHistoryfourModelObj
                                                          ?.listparacetamol1ItemList[
                                                      index] ??
                                                  Listparacetamol1ItemModel();
                                          return Listparacetamol1ItemWidget(
                                              model);
                                        });
                                  })))
                    ]))));
  }

  onTapNoon(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.complianceHistorytwoScreen,
    );
  }
}
