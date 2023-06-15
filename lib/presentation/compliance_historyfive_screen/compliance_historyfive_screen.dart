import '../compliance_historyfive_screen/widgets/listparacetamol2_item_widget.dart';
import 'bloc/compliance_historyfive_bloc.dart';
import 'models/compliance_historyfive_model.dart';
import 'models/listparacetamol2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/custom_button.dart';

class ComplianceHistoryfiveScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ComplianceHistoryfiveBloc>(
        create: (context) => ComplianceHistoryfiveBloc(
            ComplianceHistoryfiveState(
                complianceHistoryfiveModelObj: ComplianceHistoryfiveModel()))
          ..add(ComplianceHistoryfiveInitialEvent()),
        child: ComplianceHistoryfiveScreen());
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
                          width: getHorizontalSize(116),
                          text: "lbl_evening".tr,
                          shape: ButtonShape.Square,
                          fontStyle: ButtonFontStyle.NotoSansBold20,
                          prefixWidget: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft)),
                          onTap: () {
                            onTapEvening(context);
                          }),
                      Expanded(
                          child: Padding(
                              padding: getPadding(top: 46),
                              child: BlocSelector<
                                      ComplianceHistoryfiveBloc,
                                      ComplianceHistoryfiveState,
                                      ComplianceHistoryfiveModel?>(
                                  selector: (state) =>
                                      state.complianceHistoryfiveModelObj,
                                  builder:
                                      (context, complianceHistoryfiveModelObj) {
                                    return ListView.separated(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(60));
                                        },
                                        itemCount: complianceHistoryfiveModelObj
                                                ?.listparacetamol2ItemList
                                                .length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          Listparacetamol2ItemModel model =
                                              complianceHistoryfiveModelObj
                                                          ?.listparacetamol2ItemList[
                                                      index] ??
                                                  Listparacetamol2ItemModel();
                                          return Listparacetamol2ItemWidget(
                                              model);
                                        });
                                  })))
                    ]))));
  }

  onTapEvening(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.complianceHistorytwoScreen,
    );
  }
}
